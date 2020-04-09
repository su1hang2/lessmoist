infile = [CHANGE_ME].tex
outfile = [CHANGE_ME].pdf

all: $(infile)
    latexmk -pdf $(infile)

live: $(infile)
    subl $(infile)
    touch $(outfile)
    open -a Skim $(outfile)
    latexmk -pdf -pvc -quiet -f $(infile)

clean:
    latexmk -c $(infile)

nuke:
    latexmk -C $(infile)