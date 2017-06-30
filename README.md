# Backend data and analysis serveice for the MIxT web application
This the is the compute service in the MIxT web application. It is simply the compute service in 
[Kvik](https://github.com/fjukstad/kvik) with the [mixtbt](http://github.com/fjukstad/mixtbt)
package installed. 

## Build and run the server
Clone down this reposityr, build or get a binary of the
[mixtbt](http://github.com/fjukstad/mixtbt) package, move it into the directory 
where you cloned down the repository, and build the Docker Image:

```
git clone --recursive git@bitbucket.org:fjukstad/mixt-compute-service.git
cd mixt-compute-service.git
mv /WHERE/THE/BINARY/IS/mixtbt_1.0_R_x86_64-pc-linux-gnu.tar.gz .
docker build -t mixt-compute-service .
docker run -p 8787:80 -t mixt-compute-service
```

