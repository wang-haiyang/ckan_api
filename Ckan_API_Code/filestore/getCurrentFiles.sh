#!/bin/sh  
#============ get the file name ===========  

#循环读取文件夹名  
pkg_id="201211-sec-fy2d-ir1"
echo ${pkg_id}

for file_a in ./*; do  
    temp_file=`basename $file_a` 
    temp_file_name=${temp_file%.*} 
    #echo ${InputDir}/${temp_file}
    curl -H'Authorization: c4ec2786-f178-468b-8122-8c24f4175c4d' 'http://10.50.6.151/api/3/action/resource_create' \
	--form upload=@${temp_file} \
	--form package_id=${pkg_id} \
	--form name=${temp_file_name} \
	--form format=jpg
done  