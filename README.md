# recuerdame_proyect

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Recuérdame - Recordatorios y Control de Medicamentos

**Versión de Flutter:** 3.24.4

## Descripción

**Recuérdame** es una aplicación móvil desarrollada en Flutter que ayuda a los usuarios a recordar cuándo deben tomar sus medicamentos. A través de la aplicación, los usuarios pueden gestionar sus recetas, configurar recordatorios automáticos y recibir notificaciones en sus dispositivos móviles.

La aplicación tiene una interfaz intuitiva que permite a los usuarios organizar sus medicamentos y horarios de manera sencilla, con opciones para personalizar notificaciones y llevar un registro de su historial de medicación.

## Características

- **Registro de Medicamentos:** Permite añadir y gestionar diferentes medicamentos.
- **Recordatorios Personalizados:** Configuración de recordatorios para cada medicamento según las necesidades del usuario.
- **Historial de Medicación:** Visualización de un historial de las tomas de medicamentos y modificaciones.
- **Notificaciones:** Notificaciones automáticas para alertar al usuario sobre los horarios de toma de sus medicamentos.
- **Compatibilidad con el Sistema de SISOL:** Verificación de identidad y acceso a datos desde el sistema de SISOL para pacientes registrados en ese sistema.

## Estructura del Proyecto

- **lib/**: Contiene el código principal de la aplicación en Flutter.
  - **models/**: Define las clases de datos, como Medicamento y Recordatorio.
  - **screens/**: Cada pantalla de la aplicación, como la pantalla de inicio, detalles de medicamento, y ajustes.
  - **widgets/**: Widgets personalizados que se reutilizan en distintas partes de la aplicación.
  - **services/**: Servicios de integración, como el servicio de notificaciones y conexión con SISOL.
- **assets/**: Archivos de recursos, como fuentes personalizadas y archivos de imagen.
- **test/**: Pruebas unitarias y de integración para garantizar la calidad del código.

## Instalación

Para instalar y ejecutar el proyecto localmente, sigue estos pasos:

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/tu-usuario/recuérdame.git
   cd recuérdame
   ```
Instala las dependencias: Asegúrate de tener Flutter 3.24.4 instalado. Luego ejecuta:

   ```bash
flutter pub get
```
Ejecuta la aplicación:

```bash
flutter run
```
## Uso
Registra tus medicamentos con el nombre, dosis y horario de toma.
Configura recordatorios automáticos según tus necesidades.
Recibe notificaciones para tomar tus medicamentos a tiempo.
Consulta el historial de tus medicamentos y realiza ajustes según sea necesario.