pipeline{
        stages{
            stage('buid'){
                steps{
                    script{
                        sh """
                           echo "I am from buid"
                        """
                    }
                }
            }
            stage('test'){
                steps{
                    script{
                        sh """
                           echo "I am from test"
                        """
                    }
                }
            }
            stage('deploy'){
                steps{
                    script{
                        sh """
                           echo "I am from deploy"
                        """
                    }
                }
            }
        }
}