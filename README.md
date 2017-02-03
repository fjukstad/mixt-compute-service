# Backend data and analysis server for MIxT 
## Build and run the server

First, on `pepi` build a `binary package` of the [R
package](https://bitbucket.org/bcimcgill/mixt-rpackage/) and store it
somewhere, e.g. in your home directory.

Then, `scp` the `.tar.gz` package from pepi to the server
`mixt-blood-tumor.bci.mcgill.ca` (aka docker0.bci.mcgill.ca): 

```
scp mixt_1.0_R_x86_64-pc-linux-gnu.tar.gz bjorn@docker0:
```

On mixt-blood-tumor, move the binary package into the `mixt-compute-backend`
directory and build the Docker image for the compute backend:

```
mv mixt_1.0_R_x86_64-pc-linux-gnu.tar.gz mixt-compute-backend
cd mixt-compute-backend
docker build -t mixt-compute-backend .
docker run -p 8787:80 mixt-compute-backend
```

Note: If there's already a server running you'll have to use `docker ps` to get
its name and `docker stop CONTAINTERNAME` to stop it.


## Initial setup

```
git clone --recursive git@bitbucket.org:bcimcgill/mixt-compute-backend.git
# move the binary package into the mixt-compute-backend directory
cd mixt-compute-backend
docker build -t mixt-compute-backend .
docker run -p 8787:80 mixt-compute-backend 
```

