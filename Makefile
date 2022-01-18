PACKAGE_NAME=gugle

BUILD_DIR=bin/
BUILD_FILE=$(BUILD_DIR)$(PACKAGE_NAME)

make: compile run

compile:
	go build -o $(BUILD_FILE) ./cmd/$(PACKAGE_NAME)

clean:
	rm -f $(BUILD_DIR)

run:
	$(BUILD_FILE)
