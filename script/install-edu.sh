#!/usr/bin/sh

yum install -y octave R freemind dia

# Install LaTeX packages
yum -y install texlive texlive-latex texlive-xetex texworks
yum -y install texlive-collection-latex
yum -y install texlive-collection-latexrecommended
yum -y install texlive-xetex-def
yum -y install texlive-collection-xetex
# yum -y install texlive-collection-latexextra
# Source: http://mednis.info/wp/?p=63
yum install -y texlive-{subfigure,frcursive,was,titlesec,sectsty,biblatex,bbm-macros,subfig,multirow,comment,relsize,arydshln,was,wrapfig,lastpage,endfloat,nonfloat,mathabx,mathabx-type1,sttools,yfonts,apacite,expex,upquote,apa,biblatex-mla,natbib,tikz-qtree,tikz-dependency}
