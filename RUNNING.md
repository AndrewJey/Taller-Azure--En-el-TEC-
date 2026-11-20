

<!-- local-development:start -->
# Desarrollo local

Puedes abrir este repositorio en VS Code, Antigravity o Sublime Text. El compilador y los servicios necesarios dependen del componente indicado abajo.

## Visual Studio 2022 / .NET Framework

Instala la carga de trabajo de escritorio .NET y el paquete de destino indicado en la tabla. Los proyectos ASP.NET también requieren la carga web e IIS Express. Abre la solución `.sln` correspondiente y selecciona el proyecto de aplicación para iniciar.

```powershell
# Ejecutar desde Developer PowerShell de Visual Studio 2022
$solutionDir = (Resolve-Path 'taller_azure_1-C#/Resume').Path + '\'
MSBuild.exe 'taller_azure_1-C#/Resume/Resume/Resume.csproj' /restore /p:RestorePackagesConfig=true /p:Configuration=Debug /p:DeployOnBuild=false "/p:SolutionDir=$solutionDir"
```

## Componentes y validación

Inventario y compilaciones locales del 2026-11-15. Una compilación correcta no acredita todavía interacción, compatibilidad de base de datos, instalador ni despliegue.

| Componente | Tipo / destino | Validación |
| --- | --- | --- |
| [taller_azure_1-C#/Resume.sln](<taller_azure_1-C#/Resume.sln>) | solution | Sin ejecutar |
| [taller_azure_1-C#/Resume/Resume.sln](<taller_azure_1-C#/Resume/Resume.sln>) | solution | Sin ejecutar |
| [taller_azure_1-C#/Resume/Resume/Resume.csproj](<taller_azure_1-C#/Resume/Resume/Resume.csproj>) | dotnet / v4.8.1 | Compila; prueba funcional pendiente |

## Archivos ignorados

`.gitignore` excluye credenciales locales, estado del editor y salidas de las herramientas detectadas. No deja de versionar archivos que ya estaban en Git. Los manifiestos, archivos de bloqueo, recursos fuente y scripts de esquema forman parte del código.
<!-- local-development:end -->

<!-- improvements-20261119:start -->
## Mejoras y verificación — 2026-11-19 (Portafolio Web Forms modernizado, responsivo y configuración LocalDB actualizada)

- Reemplazadas las plantillas genéricas en `Default.aspx`, `About.aspx`, `Contact.aspx` y `Site.Master` por un portafolio técnico en español con metadatos responsive (`width=device-width, initial-scale=1.0`), foco accesible y estilos móviles en `Content/Site.css`.
- Actualizado `Web.config` de `(LocalDb)\v11.0` a `(LocalDb)\MSSQLLocalDB` y añadido `ResumeProfileService`.
- Validación: compilación MSBuild de `Resume.csproj` y 4 aserciones sobre datos de perfil y validación de correo.
<!-- improvements-20261119:end -->
