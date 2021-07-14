pipeline {
    agent any

    stages{
        stage('checkfile') {
            steps{
                unstash 'FILE'
                sh 'cat FILE'
                // withFileParameter('FILE') {
                //     sh 'cat $FILE'
                // }
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