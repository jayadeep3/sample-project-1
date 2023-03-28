node {
    stage ('Git Checkout') {
        git branch: 'main', url: 'https://github.com/jayadeep3/sample-project-1.git'
    }
    stage('Build Docker Image'){
        sh "docker build -t myimage321:1.0 ."
    }
    
    stage('Unarchive the image'){
        sh "tar -cvf myimage321.tar ."
    }
    stage('docker image push to s3'){
        sh "aws s3 cp myimage321.tar s3://mybucket424"
    }
    
}
