pipeline {
    agent any

    stages{
        stage('checkfile') {
            withFileParameter('FILE') {
                sh 'cat $FILE'
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