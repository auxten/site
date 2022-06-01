#!/bin/bash

# inplace replace the gitalk-secret with content in /etc/secrets/gitalk
GITALK_SECRET=$(cat /etc/secrets/gitalk)
sed -i "s/clientSecret = .*/clientSecret = ${GITALK_SECRET}/" config.toml