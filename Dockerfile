FROM openjdk-8-jdk
USER root
RUN apt-get update
COPY /home/maven/workspace/venkypipeline/gameoflife-web/target/gameoflife.war /gameoflife.war
EXPOSE 8080
CMD ["java", "-war", "/gameoflife.war"]
