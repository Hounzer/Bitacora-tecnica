# Resumen Semana 01 — Entorno, Git y Terminal

## Entorno
WSL2 + Ubuntu operativo, VS Code con extensión WSL, Node v24 vía nvm,
Git configurado con SSH hacia GitHub.

## Git
- Tres zonas: working directory → staging (add) → historia (commit)
- Tres vistas de ramas: local / foto local del remoto / remoto real
  - `git fetch --prune` refresca la foto y limpia ramas fantasma
- Flujo establecido: `git switch -c rama` → add → commit → `git push -u origin rama`
  → PR → merge → `git switch main` → `git pull` → `git branch -d rama`
- `git branch` crea pero NO te mueve; `git switch -c` crea y mueve
- Three-way merge vs rebase; conflictos provocados y resueltos
- `git log --oneline --graph` como verificación visual
- `git reset HEAD~1` deshace un commit prematuro (antes del push)
- Commits atómicos: si el mensaje necesita "y... y...", eran varios commits
- Nombres de rama: sin tildes ni caracteres especiales

## Terminal y shell
- Modelo terminal (ventana) / shell (intérprete) / kernel (sistema)
- PATH: dónde busca bash los ejecutables
- Permisos rwx por usuario/grupo/otros; `chmod u+x`; en directorios, x = atravesar
- Canales: stdin(0), stdout(1), stderr(2)
- Redirecciones: `>` (stdout a archivo), `<` (stdin desde archivo), `>&2` (a stderr)
- `|` conecta stdout→stdin entre procesos; `&&` condicional; `;` incondicional

## Procesos (sábado)
- Todo comando crea un proceso hijo; hereda copia de variables + descriptores
- PID/PPID; `ps -f`, `echo $$`, `pgrep`, `kill`; árbol hasta el proceso 1
- Bash espera en foreground; `&` + `jobs`/`fg`/`bg` para segundo plano
- Señales: SIGINT, SIGTERM, SIGKILL, SIGTSTP
- La redirección la ejecuta bash ANTES de arrancar al hijo

## Scripting (sábado)
- Un script = un bash hijo leyendo comandos desde archivo (shebang)
- `$1 $# $0 $?`, guard clause, errores por stderr + exit ≠ 0
- `if [ ]` reacciona a códigos de salida; `[` es un comando
- Comillas dobles expanden variables; sin comillas anidadas
- Probar siempre los tres caminos y verificar con `echo $?`

## Pendientes que salieron en la semana
git stash · printf vs echo · built-ins vs comandos externos ·
mover archivos ya commiteados · pstree