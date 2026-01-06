TEX_FILE = David_Vigh_Resume.tex
PDF_FILE = David_Vigh_Resume.pdf
IMAGE_NAME = latex

.PHONY: all build pdf clean open

all: build open clean

build:
	docker build -t $(IMAGE_NAME) .

pdf:
	docker run --rm -i -v "$$PWD":/data $(IMAGE_NAME) pdflatex $(TEX_FILE)

clean:
	rm -f *.aux *.log *.out

open: pdf
	open $(PDF_FILE)
