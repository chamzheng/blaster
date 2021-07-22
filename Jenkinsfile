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
                sh 'mkdir finished'
                sh 'mkdir original'
            }
        }

        stage('checkFile') {
            steps{
                unstash 'FILE'
                withFileParameter('FILE') {
                    sh 'unzip $FILE -d original'
                }
            }
        }

        stage('trimFile') {
            steps{
                sh './run_trim.sh'
            }
        }

        stage('runBlaster') {
            steps{
                sh './run_blaster.sh'
            }
        }

        stage('runResult') {
            steps{
                sh './run_result.sh'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'result.zip', fingerprint: true 
            }
        }

    }

    post {
        always {
            deleteDir()
        }
    }

}