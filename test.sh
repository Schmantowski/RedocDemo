for filename in C:/Users/Medien/Desktop/FRIDA/RedocDemo/yaml_input/*; 
	do 
		openapi bundle -o C:/Users/Medien/Desktop/FRIDA/RedocDemo/yaml_output/Resolved_"${filename:51:$((${#filename}))-5}" $filename
    done
