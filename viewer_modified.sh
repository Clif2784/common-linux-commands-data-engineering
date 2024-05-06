#!/bin/bash

# 1.Manejar el caso cuando no se pasa ningún argumento de archivo
# -z se utiliza para verificar si una cadena está vacía.
if [ -z "$1" ]; then
    echo "Al ejecutable: $0 no se le paso ningun <file>"
    exit 1
    # exit 1 es un comando en Bash que se utiliza para terminar la ejecución de un script y devolver un código de 
    #   salida no exitoso al sistema operativo.
fi

# 4. Actualice el script para permitir la visualización de múltiples archivos pasados como argumentos
    # La expresión "$@" en Bash representa todos los argumentos pasados al script. 
for FILE in "$@"; do

    # Usage: viewer.sh <file>
    #FILE="$1"

    # check is file exists
    #  -f se utiliza para verificar si un archivo existe y es un archivo regular
    #  ! -f "$FILE" se utiliza para verificar si el archivo especificado por la variable $FILE no existe o no es un archivo regular.
    if [ ! -f "$FILE" ] ; then
        echo "Error: File $FILE no encontrado"
        # exit 1
    else

        # output file contents
        echo "Contents of $FILE:"
        cat "$FILE"

        # show file info
        echo -e "\nFILE info:"
        ls -l "$FILE"
        # 2. Imprima el tamaño del archivo en un formato legible para el ser humano
        du -sh "$FILE"
        # 3. Imprima la última fecha de modificación del archivo
        # stat: Es un comando en sistemas Unix y Linux que muestra información sobre archivos y sistemas de archivos.
        # -c "Ultima modificacion: %y": Esta opción especifica el formato de salida que deseamos para stat. La letra %y 
        #   dentro de las comillas indica que solo queremos mostrar la fecha y hora de la última modificación del archivo.
        # El comando stat -c "Last modified: %y" "$FILE" obtiene información detallada sobre un archivo especificado 
        #   por "$FILE" utilizando el comando stat, y luego formatea la salida para mostrar solo la fecha y hora de la 
        #   última modificación del archivo en un formato específico.
        stat -c "Ultima modificacion: %y" "$FILE"

        echo -e "\n"
        # La opción -e habilita la interpretación de secuencias de escape en el texto que se imprime.
        # Las secuencias de escape son combinaciones de caracteres que comienzan con una barra invertida \ y se utilizan 
        # para representar caracteres especiales, como saltos de línea \n, tabulaciones \t, retorno de carro \r, entre otros
        # Cuando utilizas echo -e, le estás indicando a Bash que interprete estas secuencias de escape y las imprima según corresponda.
    fi
done