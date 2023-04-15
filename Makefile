URL = https://damianjaniszewski.github.io/charts

SRC_GO = ~/Src/go/src
HELM_PACKAGES = $(SRC_GO)/go-env/manifests/helm/*.tgz $(SRC_GO)/go-fibo/manifests/helm/*.tgz $(SRC_GO)/rest-collector/manifests/helm/*.tgz

all: copy index

copy:
	cp $(HELM_PACKAGES) ./

index:
	helm repo index ./ --url $(URL)
