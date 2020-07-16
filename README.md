# Demo Spring Boot Project with jar files to deploy it on AWS ElasticBeanStalk

## Location of the spring boot project 
https://github.com/hariskumar-panakkal/demo

You can clone it using 

git clone https://github.com/hariskumar-panakkal/demo.git

and then modify as needed
 
OR

Use the jar file from below link to deploy it in Bean Stalk

https://github.com/hariskumar-panakkal/demo/blob/master/jar/demo-0.0.1-SNAPSHOT.jar
 
## Quick Steps:
- Create Application  (e.g empId-aws-microservices)
- Create Environment ( Java8,  e.g demo-service-dev)
- Use console option to deploy using sample jar  provided below
- Deploy using  CLI 
  - Install AWS CLI  and EB CLI  (check ```aws --version``` and ```eb --version```)
  - Clone the demo repository  (```git clone https://github.com/hariskumar-panakkal/demo.git ```)
  - ```cd demo```  and execute the following commands to build jar file & deploy jar file to AWS Beanstalk
  - start with ```eb init``` & modify  ```config.yml``` to add environment  & ```deploy: artifact```  refer  .elasticbeanstalk folder for sample
  - if you have a shell prompt run  ```./deploy.sh``` or  ```run mvn``` and ```eb``` commends manually
     - ```mvn clean install -DskipTests```
     - ```eb deploy demo-dev-env```
  - ```eb open``` will open the application in browse or click the link from aws console
    - sample url http://demo-dev-env.ap-south-1.elasticbeanstalk.com/
