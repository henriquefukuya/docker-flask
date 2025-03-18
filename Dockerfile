# Usa a imagem oficial do Python
FROM python:3.9

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos para dentro do container
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instala as dependências
RUN pip install -r requirements.txt

# Expõe a porta 5000
EXPOSE 5000

# Define o comando para rodar o app
CMD ["python", "app.py"]

