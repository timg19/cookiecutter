#!/bin/bash

echo "fetching transkriptions from data_repo"
rm -rf data/
curl -LO https://github.com/timg19/Briefe_Kraus_etc/archive/refs/heads/main.zip
unzip main

mv ./Briefe_Kraus_etc-main/data/ .

rm main.zip
rm -rf ./Briefe_Kraus_etc-main

echo "fetch imprint"
./shellscripts/dl_imprint.sh
