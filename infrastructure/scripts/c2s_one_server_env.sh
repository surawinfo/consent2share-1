#!/bin/bash

# Declare methods start
function defaultConfig() {
    # Database details
    export UAA_DB_PASSWORD=admin
    export PCM_DB_PASSWORD=admin
    export PLS_DB_PASSWORD=admin
    export PHR_DB_PASSWORD=admin
    export PATIENT_USER_DB_PASSWORD=admin
    export AUDIT_DB_PASSWORD=admin
    export C2S_BASE_PATH=/usr/local
    export CONFIG_DATA_GIT_DIR=c2s-config-data
    # Edge Server configuraiton
    export C2S_APP_PORT=80
    # SMTP details
    export UAA_SMTP_HOST=your_mail_host
    export UAA_SMTP_PORT=your_mail_port
    export UAA_SMTP_USER=your_mail_username
    export UAA_SMTP_PASSWORD=your_mail_password
    #logback-audit variables
    export AUTO_SCAN=true
    export SCAN_PERIOD="30 seconds"
   }

function oneServerConfig() {
    defaultConfig
    # Edge Server configuraiton
    export C2S_APP_HOST=your_app_server_host
    # Config Server Configuration
    export BASIC_AUTH_USER=your_basic_auth_user
    export BASIC_AUTH_PASSWORD=your_basic_auth_password
    # This variable is only required to give server environment specific profile
    # data added in config-data repository
    # export ENV_APP_PROFILE=your_app_Server_specific_profile
    
    # This variable is only required if encrypted values are available in the server environment specific profile
    # conofig data variables
    #export CONFIG_DATA_ENCRYPT_KEY=your_config_data_encrypt
}

oneServerConfig
