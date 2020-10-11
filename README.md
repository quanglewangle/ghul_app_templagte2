# ghūl application template project

This is a template for quick-starting a ghūl language application project and demonstrating language features:

- The target is a .NET Core console application that will run under Mono and .NET Core 3.1
- The project is pre-configured for rich language support and build tasks in Visual Studio Code
- Continuous integration is supported via a basic build and test pipeline running on GitHub Actions
- The example code demonstrates various ghūl language constructs

## CI/CD status

![CI/CD](https://github.com/degory/ghul-application-template/workflows/CI/CD/badge.svg?branch=main)

## Prerequisites

- Any one of:
  - GitHub [Codespaces](https://github.com/features/codespaces)
  - Windows 10 with [Docker Desktop](https://www.docker.com/products/docker-desktop) and the VSCode [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension 
  - Windows 10 with [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10), configured to run Linux with a recent version of [Mono](https://www.mono-project.com/), plus the VSCode [Remote - WSL](https://marketplace.visualstudio.com/items?,itemName=ms-vscode-remote.remote-wsl) extension  
  - Native Linux + Mono
- Visual Studio Code

## Getting started with GitHub Codespaces
If you have access to GitHub [Codespaces](https://github.com/features/codespaces) then you can clone this repository into a Codespace container and develop your application directly in the browser.

## Getting started with a development container on Windows 10

The easiest way to get up and running on Windows is via a development container. The template repository includes a `.devcontainer` folder, which will set up a local container with the dependencies needed to build .NET applications in ghūl.

### Development container prerequisites
VSCode development containers have a standard set of prerequisites that you need to install:
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- The [WSL2 back-end](https://docs.docker.com/docker-for-windows/wsl/) for Docker Desktop
- The Visual Studio Code [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

### Clone the template in a container
Once the prerequisites for development containers are working, clone this template repository from GitHub into a new unique volume:
- Open a new Visual Studio Code window
- If you have no pre-existing development containers, you may be offered the option to `Clone Repository in Container Volume` - if so, choose this option.
- Otherwise, either:
    - Open the Remote Explorer from activity bar on the left
    - Click `+` icon
    - Choose `Clone Repository in Container Volume` from the menu
- or
    - `Ctrl` + `P`
    - Type `>`
    - Start typing `Clone Repository in Container Volume`, and select that option when it appears
- Choose `+ Create a unique volume` when prompted

Visual Studio Code will create a container and a unique volume to hold your application.

## Building the application
The default VSCode build task is auto-configured, so you can build the application with either:
- `Ctrl` + `Shift` + `B`, or
- `Ctrl` + `Shift` + `P`, choose `Run Task`, then choose the build task from the list

## Running the application
The build output is a simple .NET console application (`hello-world.exe`), which can be run:
- from the command line with Mono: `mono hello-world.exe`
- from the command line with .NET Core: `dotnet hello-world.exe` (provided you have .NET Core installed - note, it's not pre-installed in the development container)
- via the pre-configured VSCode test task: `Ctrl` + `Shift` + `P`, choose `Run Task`, choose the run task from the list

## Nice to have
ghūl source code looks best in the [Fira Code](https://github.com/tonsky/FiraCode) font. Fira Code combined with the `ss07` ligatures setting in `settings.json` gives the preferred rendering of ghūl operators:

```
    "editor.fontLigatures": "'ss07'",
    "editor.fontFamily": "'Fira Code', Consolas, 'Courier New', monospace",
```
