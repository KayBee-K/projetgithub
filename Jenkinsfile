  pipeline {
   agent any
   stages {
     stage("checkout"){
       steps {
         echo "récupération du projet"
         git branch: 'main',
         credentialsId: 'jenkinsgitlabinternet1',
         url: 'git@gitlab.com:kay953048/projetmaven.git'
       }
     }
     stage("compile"){
       steps{
         echo "compilation du projet"
         sh './mvnw compile'
       }
     }
     stage("tests"){
        steps{
          echo "test unitaire et test d'integration"
          sh './mvnw test'
        }
     }
     stage("package"){
       steps{
         echo "création du package de l'application"
         sh './mvnw package'
       }
     }
     stage("image docker"){
       steps{
         echo "création de l'image docker"
       }
     }
     stage("push registry"){
       steps{
         echo "push de l'image sur le registry"
       }
     }
     stage("deploiement"){
      steps{
         echo "déploiement de l'application"
      }
     }
   }
}
