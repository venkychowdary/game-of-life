FROM openjdk-8-jdk
USER maven
RUN apt-get update
COPY /home/maven/workspace/venkypipeline/gameoflife-web/target/gameoflife.war /gameoflife.war
EXPOSE 8081
CMD ["java", "-war", "/gameoflife.war"]
