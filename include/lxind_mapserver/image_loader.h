#ifndef MAP_SERVER_MAP_SERVER_H
#define MAP_SERVER_MAP_SERVER_H

/*
 * Author: Brian Gerkey
 */

#include "nav_msgs/GetMap.h"


// compute linear index for given map coords
#define MAP_IDX(sx, i, j) ((sx) * (j) + (i))


namespace lxind_mapserver
{

/** Read the image from file and fill out the resp object, for later 
 * use when our services are requested. 
 *
 * @param resp The map wil be written into here
 * @param fname The image file to read from
 * @param res The resolution of the map (gets stored in resp)
 * @param negate If true, then whiter pixels are occupied, and blacker
 *               pixels are free
 * @param occ_th Threshold above which pixels are occupied
 * @param free_th Threshold below which pixels are free
 * @param origin Triple specifying 2-D pose of lower-left corner of image
 * @param mode Map mode
 * @throws std::runtime_error If the image file can't be loaded
 * */
void loadMapFromFile(nav_msgs::GetMap::Response* resp,
                     const char* fname, double res, bool negate,
                     double occ_th, double free_th, double* origin);
}

#endif
