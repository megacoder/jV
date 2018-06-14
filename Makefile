VERSION:=$(shell sed -rn -f version.sed jv/install.rdf)
#BROWSER:=cr
BROWSER:=fx

JAR	:=jV-${VERSION}-jtr-${BROWSER}.xpi

all::	${JAR}

${JAR}:: jv/*
	cd jv && zip ../${JAR} * */*

vars::
	@echo "VERSION=${VERSION}"
	@echo "JAR=${JAR}"
