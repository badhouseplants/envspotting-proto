.PHONY: protoc-docs-gen

protoc-docs-gen:
	protoc \
		--proto_path=. \
	  --doc_out=. \
	  --doc_opt=markdown,readme.md \
		$$(find . -type f -iname "*.proto")
