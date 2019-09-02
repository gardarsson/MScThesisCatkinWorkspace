#include <pcl/ModelCoefficients.h>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/features/normal_3d.h>
#include <pcl/kdtree/kdtree.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/segmentation/extract_clusters.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_types.h>
#include <pcl/PCLPointCloud2.h>
#include <pcl/conversions.h>
#include <pcl_ros/transforms.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <sstream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Bool.h"
#include "sensor_msgs/PointCloud2.h"
#include "geometry_msgs/PoseStamped.h"
#include <tf/tf.h>
#include <pcl/recognition/ransac_based/obj_rec_ransac.h>
#include <pcl/features/normal_3d_omp.h>

//This script runs the clustering algorithm when a message is received from Unity.
//Large chunks are from the Euclidean Clustering Extraction from the PCL library. Available: http://pointclouds.org/documentation/tutorials/cluster_extraction.php

typedef pcl::PointXYZ PointType;
typedef pcl::Normal NormalType;

pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>), cloud_f (new pcl::PointCloud<pcl::PointXYZ>);
int counter;
void runClustering(ros::Publisher pub1);
double pointDistance(pcl::PointXYZ centroid);

class Subscriber_Publisher
{
public:
	Subscriber_Publisher() {
		pub1 = n.advertise<sensor_msgs::PointCloud2>("/PointCloudObject", 1000);
		sub = n.subscribe("/hw/depth_perch/points", 1000, &Subscriber_Publisher::chatterCallback, this);
		sub1 = n.subscribe("/unity/get_object_pc", 1000, &Subscriber_Publisher::unityCallback, this);
	}

	void chatterCallback(const sensor_msgs::PointCloud2::ConstPtr& msg) {

		pcl::PCLPointCloud2 temp_pc;
		pcl_conversions::toPCL(*msg, temp_pc);
		pcl::fromPCLPointCloud2(temp_pc,*cloud);
	
	}

	void unityCallback(const std_msgs::Bool::ConstPtr& msg) {
		std::cout << "Got message - sending data" << std::endl;
		runClustering(pub1);
	}

public:
	ros::NodeHandle n; 
	ros::Publisher pub1;
	ros::Subscriber sub;
	ros::Subscriber sub1;

};

/*void chatterCallback(const sensor_msgs::PointCloud2::ConstPtr& msg)
{
	pcl::PCLPointCloud2 temp_pc;
	pcl_conversions::toPCL(*msg, temp_pc);
    pcl::fromPCLPointCloud2(temp_pc,*cloud);
	
	if(counter == 5)
	{
		runClustering();
	}
	counter++;
}*/

int main(int argc, char **argv)
{
  ros::init(argc, argv, "pointCloudListener");
  //ros::NodeHandle n;
  counter = 0; 
  Subscriber_Publisher obj;
  //ros::Subscriber sub = n.subscribe("/hw/depth_haz/points", 1000, chatterCallback);

  ros::spin();

  return 0;
}

//This function is entirely from the PCL library. Available: http://pointclouds.org/documentation/tutorials/cluster_extraction.php
void runClustering(ros::Publisher pub1)
{
  // Read in the cloud data
  //pcl::PCDReader reader;
  //pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>), cloud_f (new pcl::PointCloud<pcl::PointXYZ>);
  //reader.read ("table_scene_lms400.pcd", *cloud);
  std::cout << "PointCloud before filtering has: " << cloud->points.size () << " data points." << std::endl; //*

  // Create the filtering object: downsample the dataset using a leaf size of 1cm
  pcl::VoxelGrid<pcl::PointXYZ> vg;
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_filtered (new pcl::PointCloud<pcl::PointXYZ>);
  vg.setInputCloud (cloud);
  vg.setLeafSize (0.01f, 0.01f, 0.01f);
  vg.filter (*cloud_filtered);
  std::cout << "PointCloud after filtering has: " << cloud_filtered->points.size ()  << " data points." << std::endl; //*

  // Create the segmentation object for the planar model and set all the parameters
  pcl::SACSegmentation<pcl::PointXYZ> seg;
  pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
  pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_plane (new pcl::PointCloud<pcl::PointXYZ> ());
  pcl::PCDWriter writer;
  seg.setOptimizeCoefficients (true);
  seg.setModelType (pcl::SACMODEL_PLANE);
  seg.setMethodType (pcl::SAC_RANSAC);
  seg.setMaxIterations (100);
  seg.setDistanceThreshold (0.02);

  int i=0, nr_points = (int) cloud_filtered->points.size ();
  while (cloud_filtered->points.size () > 0.3 * nr_points)
  {
    // Segment the largest planar component from the remaining cloud
    seg.setInputCloud (cloud_filtered);
    seg.segment (*inliers, *coefficients);
    if (inliers->indices.size () == 0)
    {
      std::cout << "Could not estimate a planar model for the given dataset." << std::endl;
      break;
    }

    // Extract the planar inliers from the input cloud
    pcl::ExtractIndices<pcl::PointXYZ> extract;
    extract.setInputCloud (cloud_filtered);
    extract.setIndices (inliers);
    extract.setNegative (false);

    // Get the points associated with the planar surface
    extract.filter (*cloud_plane);
    std::cout << "PointCloud representing the planar component: " << cloud_plane->points.size () << " data points." << std::endl;

    // Remove the planar inliers, extract the rest
    extract.setNegative (true);
    extract.filter (*cloud_f);
    *cloud_filtered = *cloud_f;
  }

  // Creating the KdTree object for the search method of the extraction
  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ>);
  tree->setInputCloud (cloud_filtered);

  std::vector<pcl::PointIndices> cluster_indices;
  pcl::EuclideanClusterExtraction<pcl::PointXYZ> ec;
  ec.setClusterTolerance (0.02); // 2cm
  ec.setMinClusterSize (100);
  ec.setMaxClusterSize (25000);
  ec.setSearchMethod (tree);
  ec.setInputCloud (cloud_filtered);
  ec.extract (cluster_indices);

  std::list<pcl::PointCloud<pcl::PointXYZ>::Ptr> pointClouds;
	pcl::PointCloud<pcl::PointXYZ>::Ptr right_cloud (new pcl::PointCloud<pcl::PointXYZ>);
  int j = 0;
	double shortest_dist = 1000;
  for (std::vector<pcl::PointIndices>::const_iterator it = cluster_indices.begin (); it != cluster_indices.end (); ++it)
  {
	pcl::CentroidPoint<pcl::PointXYZ> centroid;
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_cluster (new pcl::PointCloud<pcl::PointXYZ>);
    for (std::vector<int>::const_iterator pit = it->indices.begin (); pit != it->indices.end (); ++pit){
      cloud_cluster->points.push_back (cloud_filtered->points[*pit]); //*
		centroid.add(cloud_filtered->points[*pit]);
	}
    cloud_cluster->width = cloud_cluster->points.size ();
    cloud_cluster->height = 1;
    cloud_cluster->is_dense = true;

    std::cout << "PointCloud representing the Cluster: " << cloud_cluster->points.size () << " data points." << std::endl;

	pointClouds.push_back(cloud_cluster);
	
	pcl::PointXYZ c1;
	centroid.get (c1);

	std::cout << "Centroid: " << c1.x << ", " << c1.y << ", " << c1.z << std::endl;

	double dist = pointDistance(c1);
	if(dist < shortest_dist)
	{
		right_cloud = cloud_cluster;
		shortest_dist = dist;
	}

    //std::stringstream ss;
    //ss << "cloud_cluster_" << j << ".pcd";
    //writer.write<pcl::PointXYZ> (ss.str (), *cloud_cluster, false); //*
    j++;
  }

	std::stringstream ss;
    ss << "right_cloud.pcd";
    writer.write<pcl::PointXYZ> (ss.str (), *right_cloud, false);
  //return (0);

	sensor_msgs::PointCloud2 pointCloud_msg;
	pcl::toROSMsg(*right_cloud.get(), pointCloud_msg);

	pub1.publish(pointCloud_msg);
}

double pointDistance(pcl::PointXYZ centroid)
{
	//double diffx = centroid.x - (-0.2);
	//double diffy = centroid.y - 0.1;
	//double diffz = centroid.z - 0.1;

	double diffx = centroid.x;
	double diffy = centroid.y;
	double diffz = centroid.z;

	return std::sqrt(diffx*diffx + diffy*diffy + diffz*diffz);

}
