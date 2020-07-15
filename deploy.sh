echo -e "<------------------------------------------------------------------->"
echo -e "Building jar files"
echo -e ">-------------------------------------------------------------------"

mvn clean install -DskipTests

cp target/demo-0.0.1-SNAPSHOT.jar  jar/demo-0.0.1-SNAPSHOT.jar

echo -e "<-------------------------------------------------------------------"
echo -e "Deploy jar to ElasticBeanStalk ... "
echo -e ">-------------------------------------------------------------------"

eb deploy demo-dev-env
