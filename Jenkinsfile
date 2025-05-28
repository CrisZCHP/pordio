pipeline {
    agent {
        docker {
            image 'node:18' // Usa la imagen de Node.js oficial con npm
        }
    }

    environment {
        NODE_ENV = "development"
    }

    stages {
        stage('Preparar Frontend') {
            steps {
                dir('frontend') {
                    sh 'npm install'
                }
            }
        }

        stage('Preparar Backend') {
            steps {
                dir('backend') {
                    sh 'npm install'
                }
            }
        }

        stage('Construir Docker') {
            steps {
                sh 'docker build -t miapp .'
            }
        }

        stage('Desplegar') {
            steps {
                echo 'Aquí iría el despliegue'
            }
        }
    }
}
