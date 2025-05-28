pipeline {
agent any

environment {
DOCKER_IMAGE_FRONTEND = 'tecnogo-frontend'
DOCKER_IMAGE_BACKEND = 'tecnogo-backend'
}

stages {
stage('Preparar Frontend') {
steps {
dir('frontend') {
sh 'npm install'
sh 'npm run build'
}
}
}

stage('Preparar Backend') {
  steps {
    dir('backend') {
      sh 'npm install'
      sh 'npm run build || echo "Strapi no necesita build manual"'
    }
  }
}

stage('Construir Docker') {
  steps {
    sh 'docker-compose build'
  }
}

stage('Desplegar') {
  steps {
    sh 'docker-compose down'
    sh 'docker-compose up -d'
  }
}
}
}
