FROM jlesage/baseimage-gui:ubuntu-20.04

RUN apt-get update && apt-get install -y wget  libfuse2 fuse

RUN cd / \
    && wget "https://github.com/mapeditor/tiled/releases/download/v1.9.2/Tiled-1.9.2_Linux_x86_64.AppImage" \
    && chmod +x Tiled-1.9.2_Linux_x86_64.AppImage

COPY startapp.sh /startapp.sh

RUN chmod +x /startapp.sh