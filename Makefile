RESUME	=	resume.pdf

RM		=	/bin/rm -f
SRC		=	$(shell ls -1 sections)
CC		=	pdflatex

.PHONY: $(SRC)

all: $(RESUME)

$(RESUME): $(SRC)
	$(CC) -jobname=$(subst .pdf,,$@) resume.tex

clean:
	$(RM) *.aux *.log *.toc *.out *.fls *.fdb_latexmk

fclean: clean
	$(RM) $(SHORT) $(LONG)

re: fclean all
