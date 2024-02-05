# GuitarHub Generator

Docker image for GuitarHub books generation.

## Build

```
docker build -t guitarhub-generator .
```

## Execute

Firstly get the GuitarHub repository.

```
git clone https://github.com/PietroPrandini/GuitarHub
```

Modify the source and then generate the books.

```
docker run -it --rm -v /path/to/GuitarHub:/GuitarHub -t guitarhub-generator
```

