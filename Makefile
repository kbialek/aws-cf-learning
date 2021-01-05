.SILENT: clean compile package upload stack-deploy stack-delete
.PHONY: clean compile package upload stack-deploy stack-delete

clean:
	scripts/clean.sh

compile: clean
	scripts/compile.sh

package: compile
	scripts/package.sh

upload: package
	scripts/upload.sh

stack-deploy:
	scripts/stack-deploy.sh

stack-delete:
	scripts/stack-delete.sh

