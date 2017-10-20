pdf:	
	pandoc -N --toc --template template.latex --filter pandoc-citeproc -o README.pdf README.md

html:
	pandoc -N --toc --css=pandoc.css --mathjax=http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML --filter pandoc-citeproc -o README.html README.md
