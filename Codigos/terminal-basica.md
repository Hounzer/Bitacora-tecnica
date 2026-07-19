# Chuleta — Terminal básica

## Moverme y mirar
- `pwd` — dónde estoy (ruta completa)
- `cd carpeta` — entrar a una carpeta
- `cd ..` — subir un nivel
- `cd ~` o `cd` — ir a mi home
- `cd -` — volver a donde estaba antes
- `ls` — qué hay aquí
- `ls -l` — con detalle: permisos, dueño, tamaño, fecha
- `ls -a` — incluir ocultos (los que empiezan con .)
- `ls -la` — ambas cosas

## Crear, copiar, mover, borrar
- `mkdir carpeta` — crear carpeta
- `mkdir -p a/b/c` — crear toda la ruta de una vez
- `touch archivo` — crear archivo vacío
- `cp origen destino` — copiar
- `cp -r carpeta destino` — copiar carpeta completa (r = recursivo)
- `mv origen destino` — mover... y también RENOMBRAR (es el mismo comando)
- `rm archivo` — borrar (no hay papelera: es definitivo)
- `rm -r carpeta` — borrar carpeta con todo adentro (pensarlo dos veces)

## Leer archivos
- `cat archivo` — mostrarlo entero
- `head archivo` — las primeras 10 líneas
- `head -n 5 archivo` — las primeras 5
- `tail archivo` — las últimas 10
- `tail -n 20 archivo` — las últimas 20
- `less archivo` — navegarlo con flechas (q para salir, / para buscar)
- `wc -l archivo` — contar líneas (muestra número y nombre)
- `wc -l < archivo` — contar líneas (solo el número)

## Buscar
- `grep "texto" archivo` — líneas que contienen ese texto
- `grep -i "texto" archivo` — ignorando mayúsculas/minúsculas
- `grep -r "texto" carpeta` — buscar dentro de todos los archivos de una carpeta
- `find . -name "*.md"` — buscar archivos por nombre desde aquí hacia abajo
  - Ej del resumen.sh: `find . -name "*.md" -not -path "./.git/*"`

## Permisos
- `ls -l` — verlos: tres tríos rwx (dueño / grupo / otros)
- `chmod u+x archivo` — dar permiso de ejecución al dueño
  - u=dueño, g=grupo, o=otros · + agrega, - quita · r lee, w escribe, x ejecuta
- En carpetas, x significa "poder atravesarla", no ejecutar nada

## Conectar comandos
- `comando > archivo` — mandar la salida a un archivo (lo SOBRESCRIBE)
- `comando >> archivo` — agregar al final sin borrar lo que había
- `comando < archivo` — que lea el archivo por stdin
- `a | b` — la salida de a es la entrada de b (flujo de datos)
  - Ej: `git log --oneline | wc -l`
- `a && b` — ejecutar b SOLO si a terminó bien (código 0)
- `a ; b` — ejecutar b siempre, haya fallado a o no

## Ayuda
- `man comando` — el manual completo (q para salir, / para buscar)
- `comando --help` — resumen rápido de opciones