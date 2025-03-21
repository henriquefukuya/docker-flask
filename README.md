# Configuração e Construção do Projeto Docker, execução de pipeline com deploy de imagem no DockerHub e execução da imagem local
⚠️ Este repositório tem como objetivo apenas validar os conhecimentos técnicos ao qual estou adquirindo no momento:

📝 Docker

📝 DockerHub

📝 Git (repositório e comandos)

📝 GitHub Actions (pipeline)

📝 Copilot/ChatGPT (criação dos scripts)


# O que é uma Imagem Docker?

Uma imagem Docker é um modelo imutável usado para criar containers. Ela contém tudo o que é necessário para rodar uma aplicação, como:

✅ O sistema operacional base (ex: Ubuntu, Alpine, etc.).

✅ As dependências da aplicação (ex: Python, Node.js, etc.).

✅ O código-fonte e configurações específicas.


# Exemplo prático

Se você tem uma aplicação Flask, pode criar uma imagem que inclui:

ℹ️ Uma base com Python instalado.

ℹ️ Os pacotes necessários para rodar o Flask.

ℹ️ O código-fonte da sua aplicação.

ℹ️ O comando que inicia o servidor Flask.

Depois de criar essa imagem, você pode compartilhá-la no Docker Hub e qualquer pessoa pode baixá-la e rodá-la sem precisar configurar nada.

# Diferença entre Imagem e Container

ℹ️ Imagem = Um modelo pronto para uso (tipo um blueprint).

ℹ️ Container = Uma instância em execução dessa imagem.


# Passo a passo para provisionar a Imagem
1) Criar um repositório no Git;

2) Criar o diretório .github/workflows

3) No diretório criado, criar o arquivo docker-build.yml

4) No repositório do Git, vá em Settings → Secrets and variables → Actions → New Repository e crie um repositório com o nome de DOCKER_PASSWORD (deve ser o Personal Access Token 'PAT' do Docker Hub) e outro repositório DOCKER_USERNAME (usuário do Docker Hub);

5) A senha do DOCKER_PASSWORD é obtida acessando o DockerHub → Settings → Engrenagem do canto superior direito → Security → criar um novo Personal Access Token (PAT) → Copiar o token gerado;

6) Digite git init (inicializar o repositório Git dentro do diretório do seu projeto Docker);

7) Digite git remote add origin https://github.com/seu-usuario/nome-do-repositorio.git

8) Digite git add . (para adicionar todos os arquivos do Docker ao git);
   
9) Digite git -m commit "Primeiro Commit" (ou como preferir);
    
10) Digite git push -u origin main

11) No repositório Git → Actions → All Workflows, verifique se a pipeline está em execução e acompanhe os processos;

12) Após a pipeline ser executada com êxito, valide no DockerHub se a imagem encontra-se com o nome do repositório, seguido de latest;

13) Execute a imagem localmente através do comando docker pull seu-usuario/meu-flask:latest

14) Execute o comando docker run -d -p 5000:5000 seu-usuario/meu-flask:latest

15) Acesse o navegador digitando o endereço http://localhost:5000 e valide se o Flask está funcionando.
