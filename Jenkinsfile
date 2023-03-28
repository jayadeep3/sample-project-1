node {
    stage ('Git Checkout') {
        git branch: 'main', url: 'https://github.com/jayadeep3/demo-project.git'
    }
    stage('Build Docker Image'){
        sh "docker build -t myimage320:1.0 ."
    }
    
    stage('Unarchive the image'){
        sh "tar -cvf myimage320.tar ."
    }
    stage('docker image push to s3'){
        sh "aws s3 cp myimage320.tar s3://mybucket420"
    }
    
}
