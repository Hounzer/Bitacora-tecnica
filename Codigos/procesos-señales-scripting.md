# Chuleta — Procesos, señales y scripting

## Ver procesos
- `ps` — lista los procesos de esta terminal
- `ps -f` — versión completa: PID, PPID (quién es el padre), CMD
- `echo $$` — muestra el PID de mi bash actual
- `pgrep -a nombre` — busca un proceso por nombre y muestra su PID
  - Ej: `pgrep -a sleep`

## Matar / controlar procesos
- `Ctrl+C` — interrumpe el proceso en primer plano (SIGINT)
- `kill PID` — le pide terminar con gracia (SIGTERM)
- `kill -9 PID` — lo mata sí o sí, último recurso (SIGKILL)
- `Ctrl+Z` — lo pausa sin matarlo (SIGTSTP)

## Segundo plano
- `comando &` — lo lanza en segundo plano y me devuelve el prompt
  - Ej: `sleep 300 &`
- `jobs` — qué tengo corriendo en segundo plano
- `fg` — traerlo al primer plano
- `bg` — reanudar en segundo plano lo que pausé con Ctrl+Z

## Dentro de un script
- `#!/bin/bash` — primera línea siempre: dice quién interpreta el archivo
- `$1`, `$2`... — los argumentos con que me llamaron
- `$#` — cuántos argumentos llegaron
- `$0` — el nombre del propio script
- `exit 1` — terminar con error (0 es éxito, cualquier otro número es fallo)
- `echo "mensaje" >&2` — mandar un mensaje por el canal de errores
- `variable="$1"` — guardar en una variable (SIN espacios alrededor del =)

## Condicionales
- Estructura:
- if [ condición ]; then
- ...
- else
- ...
- fi

- `[ -e "$1" ]` — ¿existe el archivo? (espacios dentro de [ ] obligatorios)
- `[ "$#" -eq 0 ]` — ¿es igual a 0? (para números se usa -eq, no =)
- Siempre comillas en las variables: `"$1"`, `"$#"`

## Verificar que funcionó
- `echo $?` — código de salida del último comando (correr en la terminal,
  justo después de ejecutar el script). 0 = bien, otro = falló.

## Recetas que ya usé
- Contar líneas sin que aparezca el nombre del archivo: `wc -l < archivo`
- Guard clause (validar al inicio y salir si algo falta):
-        if [ "$#" -eq 0 ]; then
-        echo "uso: $0 <archivo>" >&2
-        exit 1
-        fi
- Encontrar y matar un proceso pegado desde otra terminal:
  `pgrep -a proceso` → `kill PID`