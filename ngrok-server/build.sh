#!/bin/bash

set -e
if [ ! -f /ngrok/bin/ngrokd  ]; then
	echo "=> Compiling ngrok binary files"
	cd /ngrok; make release-server
	echo "=> Successfully built the binaries"
fi
