.PHONY: examples

CC = xelatex
PROD_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
SITU2001_RESUME_SRCS = $(shell find $(PROD_DIR) -name '*.tex')

# examples: $(foreach x, coverletter cv resume, $x.pdf)

situ2001.pdf: $(PROD_DIR)/situ2001.tex $(SITU2001_RESUME_SRCS)
	$(CC) -output-directory=$(PROD_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
	rm -rf $(PROD_DIR)/*.pdf
