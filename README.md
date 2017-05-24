# yoursco/node-base

This is a base docker image for our Node applications.

It installs Node and adds scripts for building your Node app and cleaning up afterwards.

It makes a few assumptions about what inheriting images will do:

1. The app must be added to `/home/node/www`
2. After adding the app, you must `RUN /usr/bin/build-app.sh`
3. After adding the app, you must `RUN /usr/bin/cleanup.sh`

It will start the app with `exec` mode, so your app will be running as PID 1 and can handle `SIGTERM`.

## TODO
- Uncomment the majority of cleanup.sh after some extensive testing
