#!/bin/sh

##default values##
DATATOPIC=dt0
RESPONSETOPIC=rt0


Help()
{
  echo PARAMETERS: "<datatopic> <responsetopic>"
}

Check()
{
  if [[ -z "$1" || -z "$2" ]]; then
    Help
    exit 1
  fi
}

Exec()
{
  echo exec
  DATATOPIC=$1
  RESPONSETOPIC=$2
  cp ./cmd/res/configuration-base.toml ./cmd/res/configuration.toml
  sed -i 's/\"DataTopic\"/\"$DATATOPIC\"/;s/\"ResponseTopic\"/\"$RESPONSETOPIC\"/' ./cmd/res/configuration.toml
}


## MAIN ##
Check
Exec
