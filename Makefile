invoicewithdescriptionhash: $(shell find . -name "*.go")
	go build -o ./invoicewithdescriptionhash

musl: $(shell find . -name "*.go")
	CC=$$(which musl-gcc) go build -ldflags='-s -w -linkmode external -extldflags "-static"' -o ./invoicewithdescriptionhash

dist: $(shell find .. -name "*.go")
	mkdir -p dist
	gox -ldflags='-s -w' -osarch="darwin/amd64 linux/386 linux/amd64 linux/arm linux/arm64 freebsd/amd64 openbsd/amd64" -output="dist/invoicewithdescriptionhash_{{.OS}}_{{.Arch}}"
