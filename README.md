# Projeto de Tratamento de Dados - Despesas Parlamentares

Este projeto utiliza técnicas de ciência de dados em um notebook Jupyter para analisar e prever valores de reembolsos usando um modelo ARIMA. O projeto inclui limpeza, transformação, análise e visualização dos dados. Foi construído para demonstrar habilidades em análise e visualização de dados.

## Estrutura do Projeto

A estrutura do projeto segue uma organização clara e lógica para facilitar a navegação:

├── Dockerfile

├── docs
    - despesa_ceaps_2019.csv
    - despesa_ceaps_2020.csv
    - despesa_ceaps_2021.csv
    - despesa_ceaps_2022.csv

├── notebooks
    - trat_dados.ipynb

├── src
    - main.py
    
└── README.md


- **`Dockerfile`**: Configuração do ambiente para execução do projeto em um contêiner Docker.
- **`docs`**: Diretório com os arquivos CSV contendo os dados brutos das despesas parlamentares.
- **`notebooks`**: Contém o notebook Jupyter `trat_dados.ipynb` para análise e exploração de dados.

## Pré-requisitos

- Python 3.12.4 ou superior.
- Docker (para execução em ambiente isolado).

## Como Rodar

## Configuração do Ambiente

### Usando Docker

1. **Construir o contêiner Docker**:
docker build -t trat-dados .
  
2. **Executar o contêiner**:
docker run -it --rm trat-dados

## Funcionalidades
### Tratamento de Dados:
- Limpeza de valores ausentes.
- Normalização de campos.
- Remoção de duplicatas e tratamento de outliers.
- Conversão de colunas para os formatos corretos, como datas e valores numéricos.

### Análise de Gastos:
- Agrupamento de reembolsos por senador, fornecedor (CNPJ) e tipo de despesa.
- Identificação de padrões, como os top 10 senadores e os top 10 fornecedores com maiores valores reembolsados.
- Consulta de razões sociais das empresas com base no CNPJ utilizando a API BrasilAPI.

### Visualização:
- Geração de gráficos interativos para explorar os padrões de gastos:
- Soma dos reembolsos por ano.
- Distribuição de gastos por tipo de despesa.
- Comparação de gastos entre senadores e fornecedores.
- Identificação de outliers por meio de boxplots.

## Previsão com Machine Learning:
**Modelo ARIMA:**
    - Utilizado para prever valores de reembolso futuros com base em séries temporais históricas.
    - Geração de previsões para os próximos anos, incluindo intervalos de confiança.
    
**Previsão sem Outliers:**
    - Treinamento de modelos ajustados com dados filtrados para remover valores atípicos, garantindo previsões mais robustas.
    
**Visualização das Previsões:**
    - Gráficos que comparam os dados reais com as previsões, destacando margens de erro.
    
**Possibilidade de expansão:**
Os modelos podem ser facilmente substituídos ou ajustados para incluir mais dados ou utilizar técnicas avançadas de Machine Learning, como Random Forests ou XGBoost.

## Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests com melhorias.

## Licença
Este projeto está licenciado sob a MIT License.

## Contato
Desenvolvedor: Luiz Soutes
Portfólio no GitHub (https://github.com/soutes)
Email: soutes@gmail.com
