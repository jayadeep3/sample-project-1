pipeline {
    agent any
    }

    stages {
        
        stage('Gitcheckout') {
            steps {
                git url: 'https://github.com/jayadeep3/sample-project-MBP.git'
            }
        }
        
        stage('Docker build') {
            steps {
                script {
                    docker build -t jayadeep3/image320 .
                }
            }
        }
        
        stage('Docker tag ') {
            steps {
                script {
                    docker tag jayadeep3/image320 jayadeep3/myapps:1.0
                }
            }
        }
        stage('Unarchive the image') {
            steps {
                script {
                    tar -cvf jayadeep3/new-image:1.0.tar /home/ubuntu
                }
            }
        }
        stage('Push to s3') {
            steps {
                script {
                    aws s3 cp jayadeep3/new-image:1.0.tar s3://prashanth0007
                }
            }
        }
    }
}
