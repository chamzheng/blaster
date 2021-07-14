pipeline {
    agent any
    //deleteDir()

    stages{

        stage('upload') {
            def inputFile = input message: 'Upload file', parameters: [file(name: 'data.zip')]
            new hudson.FilePath(new File("$workspace/data.zip")).copyFrom(inputFile)
            inputFile.delete()
        }

        stage('listfile') {
            echo fileExists('data.zip').toString()
        }

        stage('Build'){
            steps{
                echo "Hello World"
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