cp Dockerfile.base Dockerfile && \
./command2label.py ./xnat/command.json >> Dockerfile && \
docker build --no-cache -t xnat/nirs2ndot_bids:latest .
docker tag xnat/nirs2ndot_bids:latest registry.nrg.wustl.edu/docker/nrg-repo/yash/nirs2ndot_bids:latest
rm Dockerfile