# minio s3

## Features
Auto generate keys on server creation bypassing default minio keys


Automatic Key rotation using "rotate" startup feature

## Auto Rotate
It's possible to rotate your keys by changing the startup option to "rotate"


Once this is changed restart your server and it will automatically move your current keys to old and create your new keys


Be sure to change your startup back to "normal" once you have started your server using "rotate". This will ensure that you don't accidentally rotate your keys twice

## Known Issues

Double encryption may occur if you manually manipulate files in the keys directory

#### Key rotation is handled automatically, DO NOT manually delete files in keys directory
