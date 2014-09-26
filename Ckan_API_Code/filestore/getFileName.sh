#!/bin/sh  
#============ get the file name ===========  
echo "${PWD}"
InputDir="/d/data/atmo/2012-01/AMV/FY2E/IR3/"
echo "$InputDir"
OutputFile="${PWD}/filenames.txt"
echo "$OutputFile"
: > $OutputFile
#循环读取文件夹名  
for file_a in ${InputDir}/*; do  
    temp_file=`basename $file_a` 
    temp_file_name=${temp_file%.*} 
    #echo ${InputDir}/${temp_file}
    curl -H'Authorization: c4ec2786-f178-468b-8122-8c24f4175c4d' 'http://10.50.6.151/api/3/action/resource_create' \
	--form upload=@${InputDir}${temp_file} \
	--form package_id=satallite \
	--form name=temp_file \
	--form format=jpg
done  