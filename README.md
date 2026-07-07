# Bitácora Técnica — Plan HomeBay

## Entorno de desarrollo

| Herramienta | Versión | Por qué |
|---|---|---|
| WSL2 + Ubuntu | 26.04 | Desarrollo en Linux desde Windows, paridad con producción |
| Node.js | v24.18.0 | Runtime principal para backend JS/TS |
| npm | 11.16.0 | Gestor de paquetes de Node |
| Git | 2.x | Control de versiones profesional |
| VS Code | 1.127.0 | Editor conectado a WSL vía extensión Remote WSL |

## Estructura del repositorio
bitacora-tecnica/
├── README.md              → Este archivo, entorno documentado
├── CONTEXTO.md            → Contexto del plan para retomar conversaciones
├── semanas/               → Una entrada por semana
└── retrospectivas/        → Reflexión mensual

## Proyecto principal — HomeBay

Marketplace de servicios para el hogar en Chile.
Inicio: Julio 2026 · Duración: 20 semanas · ~350 horas

### Visión del producto

Plataforma web y móvil que conecta clientes que necesitan servicios
para el hogar con técnicos y profesionales que los ofrecen.

### Interfaces diferenciadas

**Técnico / Profesional**
- Buscar y tomar ofertas laborales
- Planificar, gestionar, aceptar y coordinar trabajos
- Verificar estado de pagos
- Calendario diario, semanal y mensual
- Perfil público con publicaciones, reseñas y puntuación 1-5 estrellas

**Cliente**
- Solicitar servicios para el hogar de forma rápida e intuitiva
- Seguimiento de trabajos requeridos
- Pasarela de pagos integrada
- Perfil personal modificable
- Subir reseñas a técnicos

### Diferenciadores estratégicos
- Verificación de credenciales y certificados de técnicos
- Calificaciones bidireccionales
- Agenda inteligente con validación de disponibilidad en tiempo real
- Asistente IA para ayudar al cliente a describir su problema
- Lanzamiento acotado: una categoría + una zona geográfica primero

## Plan de 20 semanas

| Fase | Semanas | Foco |
|---|---|---|
| 1 | 1-3 | Fundamentos y entorno |
| 2 | 4-8 | Backend profesional |
| 3 | 9-12 | Full-stack + arranque capstone |
| 4 | 13-16 | Producción de verdad |
| 5 | 17-20 | IA aplicada y cierre |