docker stop logseq
docker rm logseq
DISPLAY_WIDTH=1920
DISPLAY_HEIGHT=1080
docker run -d \
    --name logseq \
    -e DISPLAY_WIDTH=$DISPLAY_WIDTH \
    -e DISPLAY_HEIGHT=$DISPLAY_HEIGHT \
    -v $(pwd)/Logseq-linux-x64:/Logseq-linux-x64 \
    -v $(pwd)/logseq.conf:/app/conf.d/logseq.conf \
    -v /mnt/Data500G/:/note_data \
    -p 12314:8080 \
    -p 12315:12315 \
    simonthecoder/logseq_in_docker