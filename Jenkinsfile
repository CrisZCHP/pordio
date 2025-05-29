pipeline {
  agent any

  stages {
    stage('Instalar dependencias') {
      steps {
        sh 'npm install'
      }
    }
    stage('Ejecutar tests') {
      steps {
        sh 'npm test'
      }
    }
    stage('Build') {
      steps {
        sh 'npm run build'
      }
    }
  }
}
