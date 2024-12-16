# Usar uma imagem base do Python com suporte a Jupyter
FROM python:3.12-slim

# Configurar o diretório de trabalho
WORKDIR /app

# Copiar o arquivo de dependências
COPY requirements.txt .

# Instalar as dependências e o Jupyter Notebook
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install notebook

# Copiar o notebook e os datasets para o contêiner
COPY notebooks/trat_dados.ipynb /app/notebooks/
COPY docs/ /app/docs/

# Expor a porta padrão do Jupyter Notebook
EXPOSE 8888

# Comando para rodar o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

