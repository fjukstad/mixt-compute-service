# Backend data and analysis serveice for the MIxT web application
This the is the compute service in the MIxT web application. It is simply the
compute service in [Kvik](https://github.com/fjukstad/kvik) with the
[mixtApp](http://github.com/vdumeaux/mixtApp) package installed. 

## Run
Either you can run the container straight from the Docker Hub: 

```
docker run -p 8787:80 -t fjukstad/mixt-compute-service 
```

or you can clone down the repositry, build the Docker image, and run the
container:

```
git clone git@github.com:fjukstad/mixt-compute-service.git
docker build -t mixt-compute-service .
docker run -p 8787:80 -t mixt-compute-service
```

The compute service runs on port `:8787` and can be used by the
[MIxT web application](http://github.com/fjukstad/mixt). 
