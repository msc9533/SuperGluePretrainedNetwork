docker run -itd \
    --rm -p 8989:8989 \
    --net=host \
    --privileged \
    -e DISPLAY=unix$DISPLAY \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume=$(pwd):/notebooks \
    --gpus all \
    --device=/dev/video0:/dev/video0 \
    --name="sglue-container" \
    sglue:test python3 demo_superglue.py