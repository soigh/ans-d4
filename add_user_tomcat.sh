#ADMIN_USER=${ADMIN_USER:-admin}
#ADMIN_PASS=${ADMIN_PASS:-tomcat}
#MAX_UPLOAD_SIZE=${MAX_UPLOAD_SIZE:-52428800}
#CATALINA_OPTS=${CATALINA_OPTS:-"-Xms128m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=256m -Djava.security.egd=file:/dev/./urandom"}

#export CATALINA_OPTS="${CATALINA_OPTS}"

cat << EOF > /opt/apache/tomcat/apache-tomcat-8.5.50/conf/tomcat-users.xml
<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
<user username="admin" password="tomcat" roles="admin-gui,standart,manager-gui,manager-script"/>
</tomcat-users>
EOF

if [ -f "/opt/apache/tomcat/apache-tomcat-8.5.50/webapps/manager/WEB-INF/web.xml" ]
then
	sed -i "s#.*max-file-size.*#\t<max-file-size>52428800</max-file-size>#g" /opt/apache/tomcat/apache-tomcat-8.5.50/webapps/manager/WEB-INF/web.xml
	sed -i "s#.*max-request-size.*#\t<max-request-size>52428800</max-request-size>#g" /opt/apache/tomcat/apache-tomcat-8.5.50/webapps/manager/WEB-INF/web.xml
fi
