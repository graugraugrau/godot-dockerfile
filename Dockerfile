FROM debian:bookworm-slim
LABEL author="info@dunkelgrau.io"

ARG GODOT_VERSION="4.0"
ARG RC_NUMBER="1"

RUN apt-get update && apt-get install -y --no-install-recommends \
    libxcursor1 \
    libfontconfig1 \
    ca-certificates \
    git \
    unzip \
    wget \
    zip 

RUN wget -O godot.zip https://downloads.tuxfamily.org/godotengine/${GODOT_VERSION}/rc${RC_NUMBER}/Godot_v${GODOT_VERSION}-rc${RC_NUMBER}_linux.x86_64.zip -q \
    && wget -O godot-templates.tpz https://downloads.tuxfamily.org/godotengine/${GODOT_VERSION}/rc${RC_NUMBER}/Godot_v${GODOT_VERSION}-rc${RC_NUMBER}_export_templates.tpz -q \
    && mkdir ~/.cache \
    && mkdir -p ~/.config/godot \
    && unzip godot.zip \
    && mv Godot_v${GODOT_VERSION}-rc${RC_NUMBER}_linux.x86_64 /usr/local/bin/godot \
    && unzip godot-templates.tpz \
    && mkdir -p ~/.local/share/godot/export_templates/${GODOT_VERSION}.rc${RC_NUMBER} \
    && mv templates/* ~/.local/share/godot/export_templates/${GODOT_VERSION}.rc${RC_NUMBER} \
    && rm -fr templates \
    && rm -f godot-templates.tpz \
    && rm -f godot.zip \
    && godot -v -e --headless --quit
