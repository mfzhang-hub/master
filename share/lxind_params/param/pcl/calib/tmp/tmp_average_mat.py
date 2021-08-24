#!/usr/bin/env python

# json: object root version

import os, sys
import json


def curFileDir():
    the_path = sys.path[0]
    if os.path.isdir(the_path):
        return the_path
    if os.path.isfile(the_path):
        return os.path.dirname(the_path)
        
def main():
    print("cur dir: ")
    print( os.listdir(curFileDir()) )

    w_fh = open(curFileDir()+'/'+'calib_matrix.json', 'w')
    json_out = {"calib_matrix": [] }

    total_files = 0

    sum_02 = 0
    sum_12 = 0
    sum_20 = 0
    sum_21 = 0
    sum_23 = 0

    for one_file in os.listdir(curFileDir() ):
        if(-1!=one_file.find('.out')):
            total_files += 1
            r_fh = open(curFileDir()+'/'+one_file )
            print("one file: " + curFileDir()+'/'+one_file+'  !!!')
            json_obj_root = json.load(r_fh)

            json_mat = json_obj_root['calib_matrix']
            # print("json_mat[0][2]: " + str(json_mat[0][2]) )

            sum_02 = sum_02 + round(json_mat[0][2], 8)
            sum_12 = sum_12 + round(json_mat[1][2], 8)
            sum_20 = sum_20 + round(json_mat[2][0], 8)
            sum_21 = sum_21 + round(json_mat[2][1], 8)
            sum_23 = sum_23 + round(json_mat[2][3], 8)
            # print( round(json_mat[0][2], 8) )

    avg_02 = sum_02/total_files
    avg_12 = sum_12/total_files
    avg_20 = sum_20/total_files
    avg_21 = sum_21/total_files
    avg_23 = sum_23/total_files

    json_out['calib_matrix'].append([1, 0, avg_02, 0])
    json_out['calib_matrix'].append([0, 1, avg_12, 0])
    json_out['calib_matrix'].append([avg_20, avg_21, 1, avg_23])
    json_out['calib_matrix'].append([0, 0, 0, 1])


    js_str = json.dumps(json_out, indent=4)
    w_fh.write(js_str)

if __name__ == '__main__':
    main()