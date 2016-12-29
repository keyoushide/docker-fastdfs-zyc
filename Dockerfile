# fastdfs-zyc for monitoring fastdfs

FROM tomcat:7.0

MAINTAINER Jiahua <jiahuawang123@gmail.com>

ADD mm-fdfs-v1.1 /usr/local/tomcat/webapps/fastdfs_zyc

EXPOSE 8080

CMD ["catalina.sh", "run"]

