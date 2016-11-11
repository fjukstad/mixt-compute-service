# Backend data and analysis server for MIxT 
This is how you build and run the server: 

```
git clone --recursive git@bitbucket.org:bcimcgill/mixt-compute-backend.git
cd mixt-compute-backend
docker build -t mixt-compute-backend .
docker run -p 8787:80 mixt-compute-backend 
```
