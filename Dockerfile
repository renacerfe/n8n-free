FROM n8nio/n8n:latest

USER root

# Instalar dependencias necesarias: curl, jq, ffmpeg (para el proyecto original) y Python/pip para Kokoro
RUN apk add --no-cache curl jq ffmpeg python3 py3-pip git

# Instalar Kokoro TTS (texto a voz en español)
RUN pip3 install kokoro-tts

USER node
