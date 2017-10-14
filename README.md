This image runs a [H2 database](http://h2database.com/) in server mode.

### Quick Start

To run this image:

```bash
docker container run \
   --publish 9092:9082 \
   --detach \
   --name h2 \
   nemerosa/h2
```

The database can then be accessed using the following JDBC URL:

```
jdbc:h2:tcp://localhost/yourdb
```

(assuming your Docker host is also `localhost`)

### Data Volume

The `/usr/lib/h2`, which contains the H2 databases is also exposed as a
volume. Therefore, you can expose this volume on the host:

```bash
--volume /my/path/on/host:/usr/lib/h2
```

or as a named volume:

```bash
--volume h2:/usr/lib/h2
```

### Configuration Options

* `JAVA_OPTIONS` - options to set when launching the H2 JVM - defaults to
an empty string
* `H2_OPTIONS` - additional options to pass when starting the H2 server
