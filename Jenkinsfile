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
                def fb64 = input message: 'upload', parameters: [base64File('file')]
                withFileParameter('FILE') {
                    sh 'unzip $FILE -d original'
                }
            }
        }



    }

}