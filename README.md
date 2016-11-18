# lessmoist
Enhancements for LaTeX on top of tufte-handout, optimised for note taking and everyday use.

aka how to create non-shitty looking LaTeX documents, fast.

![](https://cloud.githubusercontent.com/assets/7192233/20408520/db112638-ace3-11e6-94ba-02be9db2d942.png)

## Requirements

Other than the needed packages listed with \RequirePackage, this will also probably not work unless you're using the [tufte-handout](https://www.ctan.org/pkg/tufte-latex?lang=en) document class.

## Installation

Put `lessmoist.sty` into `~/Library/texmf/tex/latex`... or wherever you're supposed to put your custom LaTeX packages into on your system.

## Vaguely related: hot-reloading instructions

As requested, here are instructions on how to have LaTeX wrapped around your little finger, all day every day.

`lessmoist.sty` is _not_ required in order to have hot-reloading enabled.

Warning: these instructions are in beta; I might have completely forgotten to mention some vital step. Create an issue or shoot me a note if that happens.

Make sure you have [latexmk](https://www.ctan.org/pkg/latexmk/?lang=en) installed. latexmk auto-builds your LaTeX for you whenever you touch any of your source documents.

Install also [Skim](http://skim-app.sourceforge.net/). Skim auto-reloads whenever it sees that your pdf has been updated. (I'm looking at you, Apple Preview)

Recommended but not essential: [Sublime Text](https://www.sublimetext.com/)

Put this in your `~/.bashrc` file

    function texset()
    {
      open $1
      latexmk -pdf -pvc -quiet $1
    }

Now, to start the auto-build process, simply type

    texset filename.tex
    
Feel free to change `texset` to an alias of your choosing.

Assuming you're using Skim, your view of the pdf will now auto-update every time you press save in your text editor.

While working with LaTeX, I like to use [Split View](https://support.apple.com/en-us/HT204948) so that I have the raw on the left, and the pdf on the right.

Happy LaTeXing!
