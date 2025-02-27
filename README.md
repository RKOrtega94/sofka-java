# SOFKA - JAVA SPRING

This project is generated in submodules

## Initialization steps

- Clone the repository:

```git
git clone https://github.com/RKOrtega94/sofka-java.git
```

- Navigate to project dir and initialize `submodules`

```git
cd ./sofka-java && git submodule init
```

- Update submodules

```git
git submodule update --recursive
```

## Run Docker

First build projects before start images.

Inside of project folders run this command:
```cmd
gradle clean build --refresh-dependencies
```

In project root directory run:
```cmd
docker-compose up --build
```