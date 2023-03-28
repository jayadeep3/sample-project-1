node{
    
    stage('SCM checkout'){
        git url: "https://github.com/jayadeep3/sample-project-1.git"
    }
    
    stage('Build Docker Image'){
        sh "docker build -t jayadeep3/image320 ."
    }
    
    stage('Tag docker image'){
        sh "docker tag jayadeep3/image320 jayadeep3/myapps:1.0"
    }
    
    stage('Unarchive the image'){
        sh "tar -cvf jayadeep3/myapps:1.0.tar /home/ubuntu"
    }
    stage('Docker image push to s3'){
        sh "aws s3 cp jayadeep3/myapps:1.0.tar s3://mybucket420"
    }
}
