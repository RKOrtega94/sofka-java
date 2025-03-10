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

## Kafka on windows

▶️ Start Zookeeper

```bash
.\bin\windows\zookeeper-server-start.bat .\config\zookeeper.properties
```

▶️ Start Kafka

```bash
.\bin\windows\kafka-server-start.bat .\config\server.properties
```

▶️ Create a new topic

```bash
.\bin\windows\kafka-topics.bat --create --topic {topic-name} --bootstrap-server {host}:9092
```

▶️ Describe topic details

```bash
.\bin\windows\kafka-topics.bat --describe --topic {topic-name} --bootstrap-server {host}:9092
```

▶️ List topics

```bash
.\bin\windows\kafka-topics.bat --list --bootstrap-server {host}:9092
```

▶️ Start console to watch messages

```bash
.\bin\windows\kafka-console-consumer.bat --topic {nombreTopic} --bootstrap-server {host}:9092
```

▶️ Start console to send messages

```bash
.\bin\windows\kafka-console-producer.bat --broker-list {host}:9092 --topic {topic-name}
```