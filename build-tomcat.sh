app=$1
port=$2

cd ~
mkdir ~/tomcats

rm -rf ~/tomcats/$app
mkdir ~/tomcats/$app
mkdir ~/tomcats/$app/webapps
cp ~/ufamily/target/ufamily-1.0.0.war ~/tomcats/$app/webapps/ROOT.war
docker stop $app && docker rm $app
docker run -h $app --name $app -d -p $port:8080 -v ~/tomcats/$app/webapps:/opt/tomcat/webapps summer/tomcat
