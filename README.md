# Ambiente para treinamento de redes neurais convolucionais 
Criação de uma imagem a partir do tensorflow-gpu para desenvolvimento de redes neurais convolucionais.
- Biblioteca tensorflow com cuda e cudnn
- Keras
- Python 3.10
- Matplotlib
- Scikit-learning
- Seaborn
- Scikit-metris
- jupyter notebook.

1) Faça o build da imagem do container
     ```bash
   chmod +x build.sh
   ```
     ```bash
   bash build.sh
     ```
     Será criada uma imagem docker chamada image-dl e o WORDIR séra /home/notebooks.
     
3) Inicie o container chamado jupyterserver:
   ```bash
    chmod +x run.sh
   ```
   
   ```bash
    bash run.sh
   ```
    Esse comando iniciará o container jupyterserver, seu ambiente de trabalho será $PWD/home/notebooks. Em seguinda, mostrará o container em execução e o log de execução do container.
    O servidor jupyter já estará rodando e será apresentado a partir de um link (https://127.0.0.1/......) na saída do último comando do run.sh.
        
