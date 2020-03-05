#Script para converter conjuntuo de imagens de .jpg para .png;

#!/bin/bash

echo "Inicializando"

cd imagens-livros

for imagem in *.jpg
do
        echo $imagem
        img_sem_ext=$(ls $imagem | awk -F. '{print $1}')
        convert $imagem $img_sem_ext.png
done

echo "Finalizando"

cd ..

#Autor: Ryan Guilherme

