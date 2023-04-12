URL = https://damianjaniszewski.github.io/charts

SRC_GO = ~/Src/go/src

TARGETS = $(SRC_GO)/go-env/manifests/helm/*.tgz $(SRC_GO)/go-fibo/manifests/helm/*.tgz $(SRC_GO)/rest-collector/manifests/helm/*.tgz

all: $(TARGETS) merge

$(TARGETS):
	@cp $@ .

merge:
	helm repo index ./ --url $(URL)
