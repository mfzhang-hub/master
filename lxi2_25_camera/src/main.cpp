#include "LxI2_25_Camera.h"


int main(int argc, char **argv)
{
	ros::init(argc, argv, "lxi2_25_node");
	
	LxI2_25_Camera camera_node;
	camera_node.run();

return 0;
}
