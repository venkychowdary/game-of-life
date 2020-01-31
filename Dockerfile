FROM openjdk-8-jdk
USER root
RUN apt-get update
COPY /home/maven/workspace/venkypipeline/gameoflife-web/target/*.war /home/maven/workspace/venkypipeline/
EXPOSE 8080
CMD ["java", "jar, "]
