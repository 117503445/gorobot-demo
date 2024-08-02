docker build -t gorobot-demo-builder -f Dockerfile.builder .
docker run --rm -it -v /root/workspace/gorobot-demo:/workspace --workdir /workspace gorobot-demo-builder

# send binary to webdav server
#curl http://192.168.99.169/public-writable/gorobot-demo.exe -X POST -F "file=@gorobot-demo.exe"
curl -T gorobot-demo.exe "http://192.168.99.169/public-writable/gorobot-demo.exe"