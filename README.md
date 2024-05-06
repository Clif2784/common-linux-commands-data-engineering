# common-linux-commands-data-engineering
common-linux-commands-data-engineering

Time and Date:

* cal: calendario del mes actual
* date: fecha y hora actual del dia de hoy

    Donde esta date 

    > $ which date
    
Disk Usage or File Size
* df -h: muestra el uso y tamño de los discos de la maquina
* du -sh *: me muestra el tamaño de cada una de las herramientas en el directorio de    
            interes   
        
    > $ du -sh /usr/bin/* 

Suystem performance
* top: muestra que esta sucediendo con el sistema

# Using the shell

Exploring:
* pwd: ruta de trabajo
* ls -lah:  muestra una lista larga con toda la info de los permisos de UNIX
> ls -lah
* cd /tmp cd ~ 
* which python3: nos da la ubicacion actual de python3

# Viewing files
* less /etc/password: esto muestra todas las contraseñas del sistema y los usuarions
* cat /etc/password: es similar (imprime lo anterior)

# Counting lines
* wc -l /etc/passwd: cuenta las lineas en un directorio

# Modifying files and directories
* touch newfile.txt: crear un archivo
* mkdir newdir: crear un directorio vacio
* mv: mueve archivos a un directorio o cambia de nombre a los archivos
    > mv newfile.txt newdir
    > mv newfile.txt newfile_other.txt
* mkdir -p moredir/dir1/dir2
* rm -rf moredir
    > rm -rf moredir

# Processes
* ps: vemos que tenemos en proceso
    > ps
    > python

    en otro terminal
    > ps -ef | grep python
* ./sleeper .sh &:
    >./sleeper.sh

    > Hanging out ...

    > Hanging out ...

    > Hanging out ...

    ctrl+Z (detener el proceso), pero con ctrl+C se mata el proceso
    > [1]+  Stopped                 ./sleeper.sh

    > jobs

    > [1]+  Stopped                 ./sleeper.sh

    un proceso se ha detenido, para volver a ejecutarlo se debe escribir
    > fg 1

    1 es la identificacion del proceso (que lo envia a primer plano)
    > Hanging out ...

    > Hanging out ...

    > Hanging out ...

    ctrl+C para matar el proceso. Pero, hay otra forma 

    > ./sleeper.sh &

    &  lo envia a segundo plano, entonces ni Ctrl+Z y Ctrl+C detienen el proceso, debo escribir

    > fg 1

    para devolverlo a primer plano y poder detenerlo