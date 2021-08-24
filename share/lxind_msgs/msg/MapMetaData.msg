# map name
string map_name             # map name, ex.outmzpick
string map_path_prefix      # path without suffix, ex: /home/fr1511b/lxind_ws/install/share/lxind_nav/maps/

# Map width [cells]
uint32 width
# Map height [cells]
uint32 height

# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
float32 resolution


####################################################
bool is_switched_map             # 是否是切换地图 
geometry_msgs/Pose2D initial_pose  # 切换地图后的初始点