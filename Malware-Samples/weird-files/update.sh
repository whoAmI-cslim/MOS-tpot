#!/bin/bash
mv /var/lib/docker/volumes/2425f8803971f3f92bf4a5bfedb87a4ab441d5b11094cc8fa955d9855dd89014/_data/log/cowrie/cowrie.json.* ./cowrie/
mv /var/lib/docker/volumes/2425f8803971f3f92bf4a5bfedb87a4ab441d5b11094cc8fa955d9855dd89014/_data/lib/cowrie/downloads/* ./downloads/
chmod +r ./*
mv /var/lib/docker/volumes/2425f8803971f3f92bf4a5bfedb87a4ab441d5b11094cc8fa955d9855dd89014/_data/lib/cowrie/tty/* ./tty/

