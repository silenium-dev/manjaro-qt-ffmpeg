FROM manjarolinux/base

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm base-devel
RUN pacman -S --noconfirm qt6
RUN pacman -S --noconfirm vulkan-devel
RUN pacman -S --noconfirm cmake

RUN pacman -S --noconfirm ffmpeg ffnvcodec-headers
RUN pacman -S --noconfirm openal
RUN pacman -S --noconfirm glu

ENTRYPOINT /bin/bash

CMD ["/bin/bash"]
