#!/bin/bash

mkdir -p ~/.ivy2
mkdir -p ~/.sbt/0.13/plugins/

kaigara render ivy2_credentials > ~/.ivy2/credentials
kaigara render sbt_credentials_plugin.sbt > ~/.sbt/0.13/plugins/credentials.sbt
