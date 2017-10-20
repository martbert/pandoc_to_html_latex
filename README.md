---
title: From Markdown to nice looking article
author: Martine
bibliography: citations.bib
csl: nature.csl
---

# Instructions

## Header

Start your `Markdown` file with a `Yaml` header such as the one at the top of this file:

    ---
    title: <YOUR_AMAZING_TITLE>
    author: <YOUR_NAME>
    bibliography: <BIBTEX_FILE>
    csl: <CSL_BIB_STYLE_FILE>
    ---

## Citations

You can site Einstein if it please you[@ANDP:ANDP19163540702]:

    [@<BIBTEX_ENTRY_NAME>]

## Equations

Using Mathjax, why not add some fun equation:

$$
\gamma = \frac{1}{\sqrt{1-v^2/c^2}}
$$

More generally:

    $$
    <YOUR_AMAZING_LATEX_EQUATION>
    $$

## Compiling

First install [pandoc and pandoc-citeproc](https://pandoc.org). On MacOS using Homebrew (follow link for documentation on other platforms):

    brew install pandoc pandoc-citeproc

Once installed, you can run the following commands for either a nice HTML document or, if you have LaTeX and PDFLaTeX installed, an equally nice PDF document:

    pandoc -N --toc --css=pandoc.css --mathjax=http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML --filter pandoc-citeproc -o README.html README.md

or

    pandoc -N --toc --template template.latex --filter pandoc-citeproc -o README.pdf README.md

You can also make yourself a nice little Makefile that will prevent retyping these every time.