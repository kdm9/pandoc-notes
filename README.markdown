Pandoc notes
============

This repository contains a makefile and associated files to turn plain text
notebooks in markdown format into pretty HTML or PDF documents. This uses
`pandoc`, with `xelatex` used to create PDFs.


### Features

- Compile notebooks to `html` or `PDF`
- Support nested directories
- Support Biblatex bibliographies and `pandoc-citeproc` (`YY/XX.md`'s
  bibliography should be in `YY/XX.bib`)


### Editor

I highly recommend using `Vim` as an editor, especially using the `vim-pandoc`
and `vim-pandoc-syntax` plugins.
