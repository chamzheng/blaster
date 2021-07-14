pipeline {
    agent any

    stages{
        stage('checkfile') {
            steps{
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