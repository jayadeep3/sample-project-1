node {
    stage ('Git Checkout') {
        git branch: 'test', url: 'https://github.com/jayadeep3/sample-project-1.git'
    }
    stage('Build Docker Image'){
        sh "docker build -t myimage322:1.0 ."
    }
    
    stage('Unarchive the image'){
        sh "tar -cvf myimage322.tar ."
    }
    stage('docker image push to s3'){
        sh "aws s3 cp myimage322.tar s3://mybucket422"
    }
    
}
