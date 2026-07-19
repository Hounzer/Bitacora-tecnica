# Chuleta — Git

## Ver estado (antes de tocar nada)
- `git status` — en qué rama estoy, qué hay modificado, qué hay en staging
- `git log --oneline` — historia compacta, un commit por línea
- `git log --oneline --graph` — historia con dibujo de ramas y merges
- `git log --oneline --no-merges` — historia sin los commits de merge
- `git show --stat HEAD` — qué archivos tocó el último commit
- `git branch` — mis ramas locales (el * marca dónde estoy)

## Flujo completo de una feature (el ciclo de siempre)
1. `git status` — verificar que estoy en main y limpio
2. `git pull` — actualizar main antes de ramificar
3. `git switch -c tipo/nombre-rama` — crear rama Y moverme a ella
4. (trabajar, probar)
5. `git add archivo1 archivo2` — subir al staging (mejor explícito que `git add .`)
6. `git commit -m "tipo: descripción corta"` — guardar en la historia
7. `git push -u origin tipo/nombre-rama` — primera vez: crea la rama remota
   y la enlaza (el -u). Las siguientes veces basta `git push`
8. PR y merge en GitHub
9. `git switch main` — volver a main
10. `git pull` — traer el merge
11. `git branch -d tipo/nombre-rama` — borrar la rama local (ya mergeada)
12. `git fetch --prune` — limpiar la foto local del remoto (ramas fantasma)

## Ramas
- `git switch -c nombre` — crear y moverme (la que uso)
- `git switch nombre` — moverme a una rama existente
- `git branch nombre` — solo crea, NO me mueve (cuidado con esta)
- `git branch -d nombre` — borrar local; se niega si tiene commits sin mergear
- `git push origin --delete nombre` — borrar una rama del remoto a mano
- Nombres: minúsculas, sin tildes, tipo/descripcion → feat/... docs/... fix/...

## Deshacer
- `git reset HEAD~1` — deshace el último commit (ANTES de pushear),
  los cambios vuelven al working directory

## Configuración que ya hice
- SSH con GitHub (llaves en ~/.ssh, permisos estrictos exigidos)
- `git config --global` para nombre y email

## Modelo mental
- Tres zonas: working directory → (add) → staging → (commit) → historia
- Tres vistas de ramas: local / foto local del remoto (origin/rama) / remoto real
- `pull` no borra trabajo sin commitear: si hay conflicto, git se detiene y avisa
- Mensajes de commit: "tipo: qué hace", minúscula tras los dos puntos,
  si necesito "y... y..." probablemente eran varios commits