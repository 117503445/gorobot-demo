# gorobot-demo

docker build -t gorobot-demo-builder -f Dockerfile.builder .

docker run --rm -it -v $(pwd):/workspace --workdir /workspace gorobot-demo-builder

docker run --rm -it -v /root/workspace/gorobot-demo:/workspace --workdir /workspace gorobot-demo-builder

docker run --rm -it -v /root/workspace/gorobot-demo:/workspace --workdir /workspace --entrypoint /bin/bash gorobot-demo-builder