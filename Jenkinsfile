node ('maven') {

    stage ('Git Repository') {
        git 'https://github.com/venkychowdary/game-of-life.git'
    }

    stage ('Building Package') {
        sh 'mvn package'
    }

    stage ('Archiving Artifactory') {
        archiveArtifacts 'gameoflife-web/target/*.war' 
    }

    stage ('Publishing Junit Test Results') {
        junit 'gameoflife-web/target/surefire-reports/*.xml'
    }

    stage ('Build Sucess') {
        echo 'Venky you done a Good Job'
    }

    stage ('Building Docker image') {
        sh 'sudo service docker start'
        sh 'docker image build -t gameoflife:1.0.0 .'
    }

    stage ()
        sh 'docker container run -p 81:80 gameoflife:1.0.0'

}