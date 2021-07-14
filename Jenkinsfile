pipeline {
    agent any

 
    
    stages{
        stage('cleanWorkspace') {
            deleteDir()
        }

        stage('checkFile') {
            steps{
                // unstash 'FILE'
                // sh 'cat FILE'
                withFileParameter('FILE') {
                    sh 'cat $FILE'
                }
            }

        }

    }


        //
        //     //
        //     steps{
        //         script{
        //             echo "hello!"
        //         }
        //     }

        // }
    }