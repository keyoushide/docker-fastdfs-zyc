# docker-fastdfs-zyc



1.Configuration



./mm-fdfs-v1.1/WEB-INF/classes/application.properties:

datasource.url=jdbc:mysql://database_ip:3306/database_name?useUnicode=true&characterEncoding=UTF-8

datasource.username=database_username

datasource.password=database_password

mail.smtp.host=smtp_service

mail.smtp.username=your_username

mail.smtp.password=your_password



./mm-fdfs-v1.1/WEB-INF/classes/fdfs_client.conf

tracker_server=ip:port 



./mm-fdfs-v1.1/WEB-INF/classes/config.xml
<server>
    
	<ip>192.168.40.53</ip>
    
	<username>root</username>  # username for accessing storage server(SSH)
    
	<password>123456</password># password
    
	<logpath>/media/jwang/mypassport0/storage0/nginx_log/</logpath>

</server>



2.Build



docker build -t="fastdfs-zyc" .



3.Run



docker run -p 8888:8080 --name fastdfs-zyc -d -v ~/docker/logs:/usr/local/tomcat/logs fastdfs-zyc



4.Access:



http://ip:8888/fastdfs_zyc

default username: admin

default password: 123456
