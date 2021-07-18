.PHONY: protoc-docs-gen

protoc-docs-gen:
	protoc \
		--proto_path=./proto \
	  --doc_out=. \
	  --doc_opt=markdown,readme.md \
		$$(find ./proto -type f -iname "*.proto")

docker-docs-gen:
	docker run --rm \
  	-v $$(pwd)/docs:/out \
  	-v $$(pwd)/proto:/proto \
  	pseudomuto/protoc-gen-doc --doc_opt=markdown,README.md --proto_path=proto $$(find proto -type f -iname "*.proto") && \
	docker run --rm \
  	-v $$(pwd)/docs:/out \
  	-v $$(pwd)/proto:/proto \
  	pseudomuto/protoc-gen-doc --doc_opt=html,index.html --proto_path=proto $$(find proto -type f -iname "*.proto")
