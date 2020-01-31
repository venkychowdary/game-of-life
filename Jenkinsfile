node ('maven') {

    stage ('Allocating Workspace') {
        ws '/home/maven/workspace/'
    }

    stage ('Git Repository') {
        git 'https://github.com/venkychowdary/game-of-life.git'
    }

    stage ('Building Package') {
        sh 'mvn package'
    }

    stage ('Archiving Artifactory') {
        archiveArtifacts '/gameoflife-web/target/*.war' 
    }

    stage ('Publishing Junit Test Results') {
        junit '/gameoflife-web/target/surefire-reports/*.xml'
    }

    stage ('Build Sucess') {
        echo 'Venky you done a Good Job'
    }

}