import subprocess

def run_docker_compose_up():
    try:
        # Executa o comando "docker compose up -d" usando subprocess
        subprocess.run(["docker", "compose", "up", "-d"], check=True)
        print("Comando 'docker compose up -d' executado com sucesso!")
    except subprocess.CalledProcessError as e:
        print(f"Erro ao executar o comando 'docker compose up -d': {e}")

# Chama a função para executar o comando
run_docker_compose_up()