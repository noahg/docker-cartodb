docker-cartodb
==============

That container provides a fully working cartodb development solution
without the installation hassle.

Just run and connect to http://cartodb.<yourdomain>.com/dashboard in the browser.

The default login is dev/pass. You may want to change it when you'll run
it for the outside.

How to build the container:
--------------

```
git clone https://github.com/noahg/docker-cartodb.git
docker build -t="noahg/docker-cartodb" docker-cartodb/
```

How to run the container:
--------------

```
docker run -t -i -p 80:80 -p 8080:8080 -p 8181:8181 noahg/docker-cartodb /bin/bash
nohup ./opt/startup.sh > startup.sh.log &
```

You might need to add dev.localhost to your hosts file.

