#!/bin/bash
 # Leia o valor da variável "IMAGE_TAG" do arquivo ".env"
image_tag=$(grep IMAGE_TAG .env | cut -d '=' -f2)
 # Copiar o valor para o arquivo "VERSION"
echo "$image_tag" > VERSION