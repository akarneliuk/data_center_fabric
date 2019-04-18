# FTP Server for the Data Centre Fabric

To run the FTP server for the Data Center Fabric as Docekr container use:
`sudo docker container run -d -p 20:20 -p 21:21 -p 50000-50050:50000-50050 -v $PWD/files:/var/ftp/files akarneliuk/dcf_ftp_ipv4`
