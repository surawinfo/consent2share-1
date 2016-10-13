#! /bin/bash
cd ..;
cd ..;
cd admin-portal-ui/server;                          mvn clean package -Pdocker docker:build; cd -; 
cd context-handler/context-handler;                 mvn clean package docker:build; cd -;
cd discovery-server/discovery-server;               mvn clean package docker:build; cd -;
cd document-validator/document-validator;           mvn clean package; cd -;
cd document-validator/document-validator/document-validator-ccda-r1;           mvn clean package docker:build; cd -;
cd document-validator/document-validator/document-validator-ccda-r2;           mvn clean package docker:build; cd -;
cd dss-api/dss;                             		mvn clean package docker:build; cd -;
cd edge-server/edge-server;                  		mvn clean package docker:build; cd -;
cd iexhub-fork/iexhub;                              mvn clean package docker:build; cd -;
cd pep-api/pep;                                     mvn clean package docker:build; cd -;
cd patient-portal-ui/server;                        mvn clean package -Pdocker docker:build; cd -;
cd patient-user-api/patient-user;                   mvn clean package docker:build; cd -;
cd pcm-api/pcm;                             		mvn clean package docker:build; cd -;
cd phr-api/phr;                  					mvn clean package docker:build; cd -;
cd pls-api/pls;                             	    mvn clean package; cd -;
cd pls-api/pls/web;                             	mvn clean package docker:build; cd -;
cd registration-api/registration;                  	mvn clean package docker:build; cd -;
cd try-policy-api/tryPolicy;                        mvn clean package docker:build; cd -;
cd uaa;											    ./gradlew clean install; cp uaa/build/libs/*.war docker/uaa.war; cd docker; docker build -t bhits/uaa .; rm uaa.war;