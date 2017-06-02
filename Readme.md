## Instructions

```sh
# Clone buildpack to the project root
git clone https://github.com/evilmartians/heroku-buildpack-static

# Build docker image
docker build --tag herstatic:latest .

# Run image
docker run -t -i -p 8081:5000 --name hstatic --rm herstatic

# Visit website
open http://localhost:8081

# Connect to the running container
docker exec -it hstatic bash
```

### Benchmarking

To run benchmarks you have to install [wrk](https://github.com/wg/wrk).

And then run:


```sh
wrk -t4 -c100 -d1h -s script.lua http://localhost:8081
```