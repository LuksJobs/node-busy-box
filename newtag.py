import os
import re

# Abrir o arquivo .env.docker
file_path = '.env'
with open(file_path, 'r') as file:
    content = file.read()

# Atualizar a tag da imagem
image_pattern = r'(IMAGE_TAG\s*=\s*)(\d+\.\d+\.)(\d+)'
image_match = re.search(image_pattern, content)
if image_match:
    prefix = image_match.group(2)
    current_number = int(image_match.group(3))
    new_number = current_number + 1
    new_image_value = f'IMAGE_TAG ={prefix}{new_number}'
    content = re.sub(image_pattern, new_image_value, content)

# Atualizar a versão
version_pattern = r'(VERSION\s*=\s*)(\d+\.\d+\.)(\d+)'
version_match = re.search(version_pattern, content)
if version_match:
    prefix = version_match.group(2)
    current_number = int(version_match.group(3))
    new_number = current_number + 1
    new_version_value = f'VERSION ={prefix}{new_number}'
    content = re.sub(version_pattern, new_version_value, content)

# Escrever o conteúdo atualizado de volta para o arquivo
with open(file_path, 'w') as file:
    file.write(content)
    print(f'Docker Tag no arquivo .env.docker atualizado para a versão: {new_number}')