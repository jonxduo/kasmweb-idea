#!/usr/bin/env bash

ARCH=$(arch | sed 's/aarch64/arm64/g' | sed 's/x86_64/amd64/g')
if [ "$ARCH" == "arm64" ] ; then
  echo "Intellij Idea not supported on arm64, skipping Idea installation"
  exit 0
fi

wget https://download.jetbrains.com/idea/ideaIU-2021.3.2.tar.gz -O idea.tar.gz
tar -xf idea.tar.gz
chmod +x idea-IU-213.6777.52/bin/
