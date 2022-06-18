##default values##
CLIENTID=mqtt-dv0
DATATOPIC=dt0
RESPONSETOPIC=rt0

if [[ -z "$1" || -z "$2" ]]; then
  echo PARAMETERS: "<datatopic> <responsetopic>"
  echo setting to defaults
else
  DATATOPIC=$1
  RESPONSETOPIC=$2
fi
echo DataTopic = \"${DATATOPIC}\"
echo ResponseTopic = \"${RESPONSETOPIC}\"
cp ./cmd/res/configuration-base.toml ./cmd/res/configuration.toml
sed -i "s/\"DataTopic\"/\"$DATATOPIC\"/;s/\"ResponseTopic\"/\"$RESPONSETOPIC\"/;s/\"clientid-mqtt\"/\"$CLIENTID\"/" ./cmd/res/configuration.toml
