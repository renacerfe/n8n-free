FROM n8nio/n8n:latest

USER root

# Instalar dependencias necesarias y verificar instalación
RUN apk add --no-cache curl jq ffmpeg python3 py3-pip git && \
    python3 --version && \
    pip3 install --upgrade pip setuptools wheel && \
    pip3 install kokoro-tts

USER node
