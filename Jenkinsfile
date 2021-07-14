pipeline {
    agent any

    stages{
        stage('cleanWorkspace') {
            steps{
                deleteDir()
            }
        }

        stage('checkFile') {
            steps{
                withFileParameter('FILE') {
                    sh 'cat $FILE'
                }
            }
        }

    }

}