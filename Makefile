RESUME	=	resume.pdf

RM		=	/bin/rm -f
SRC		=	$(shell ls -1 sections)
CC		=	pdflatex

.PHONY: $(SRC)

all: $(RESUME)

$(RESUME): $(SRC)
	$(CC) -jobname=$(subst .pdf,,$@) short.tex

long: $(SRC)
	$(CC) -jobname=lresume long.tex
clean:
	$(RM) *.aux *.log *.toc *.out *.fls *.fdb_latexmk *.synctex.gz

fclean: clean
	$(RM) $(RESUME)

re: fclean all
