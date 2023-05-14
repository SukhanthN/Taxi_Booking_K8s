pipeline {
    agent any 
    
    stages {
        stage ("git clone") {
            steps {
                git branch: 'main', url: 'https://github.com/SukhanthN/Taxi_Booking_K8s.git'
            }
        }
        stage ("code build") {
            steps  {
                sh "mvn clean install"
            }
        }
        stage ("docker build") {
            steps {
                sh "docker build -t sukhanth1/taxi-booking-k8s:1.0 ."
            }
        }
        stage ("docker push") {
            steps {
                withCredentials([string(credentialsId: 'docker_pwd', variable: 'docker')]) {
                sh "docker push sukhanth1/taxi-booking-k8s:1.0"
}
            }
        }
        stage ("deploy") {
            steps {
                script {
                    kubernetesDeploy (configs: 'deploymentservice.yaml', kubeconfigId: 'll')
                }
            }
        }
    }
}
