URL = https://damianjaniszewski.github.io/charts

SRC_GO = ~/Src/go/src

TARGETS = $(SRC_GO)/go-env $(SRC_GO)/go-fibo $(SRC_GO)/rest-collector

all: $(TARGETS) merge

$(TARGETS):
	@cp $@/manifests/helm/*.tgz .

merge:
	helm repo index ./ --url $(URL)
