void dockerHubRegister(String version) {
    script {
        docker.withRegistry('', 'DOCKER_HUB_REGISTRY') {
            docker.build("dunkelgrau/godot:${version}",
                "--build-arg=\"GODOT_VERSION=${version}\" .").push()
        }
    }
}

pipeline {
    agent {
        label 'master'
    }

    stages {
        stage('Deploy')
        {
            parallel {
                stage('Deploy 4.0') {
                    steps {
                        dockerHubRegister('4.0')
                    }
                }
                stage('Deploy 4.0.1') {
                    steps {
                        dockerHubRegister('4.0.1')
                    }
                }
                stage('Deploy 4.0.2') {
                    steps {
                        dockerHubRegister('4.0.2')
                    }
                }
                stage('Deploy 4.0.3') {
                    steps {
                        dockerHubRegister('4.0.3')
                    }
                }
                stage('Deploy 4.0.4') {
                    steps {
                        dockerHubRegister('4.0.4')
                    }
                }
                stage('Deploy 4.1') {
                    steps {
                        dockerHubRegister('4.1')
                    }
                }
                stage('Deploy 4.1.1') {
                    steps {
                        dockerHubRegister('4.1.1')
                    }
                }
                stage('Deploy 4.1.2') {
                    steps {
                        dockerHubRegister('4.1.2')
                    }
                }
                stage('Deploy 4.1.3') {
                    steps {
                        dockerHubRegister('4.1.3')
                    }
                }
                stage('Deploy 4.1.4') {
                    steps {
                        dockerHubRegister('4.1.4')
                    }
                }
                stage('Deploy 4.2') {
                    steps {
                        dockerHubRegister('4.2')
                    }
                }
                stage('Deploy 4.2.1') {
                    steps {
                        dockerHubRegister('4.2.1')
                    }
                }
                stage('Deploy 4.2.2') {
                    steps {
                        dockerHubRegister('4.2.2')
                    }
                }
                stage('Deploy 4.3') {
                    steps {
                        dockerHubRegister('4.3')
                    }
                }
            }
        }
    }
}
