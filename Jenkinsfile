pipeline {
    agent any

    stages{
        // stage('cleanWorkspace') {
        //     steps{
        //         deleteDir()
        //     }
        // }

        stage('initWorkspace') {
            steps{
                sh 'mkdir blaster_requests'
                sh 'mkdir finished'
                sh 'mkdir original'
            }
        }

        stage('checkFile') {
            steps{
                withFileParameter('FILE') {
                    sh 'unzip $FILE -d original'
                }
            }
        }

        

    }

}