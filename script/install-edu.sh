#!/usr/bin/sh

dnf install -y octave R freemind dia

# Install LaTeX packages
dnf -y install texlive texlive-latex texlive-xetex texworks texmaker
dnf -y install texlive-collection-latex
dnf -y install texlive-collection-latexrecommended
dnf -y install texlive-xetex-def
dnf -y install texlive-collection-xetex
dnf -y install texlive-fira
# dnf -y install texlive-collection-latexextra
# Source: http://mednis.info/wp/?p=63

dnf install -y texlive-{stmaryrd,subfigure,frcursive,was,titlesec,sectsty,biblatex,bbm-macros,subfig,multirow,comment,relsize,arydshln,was,wrapfig,lastpage,endfloat,nonfloat,mathabx,mathabx-type1,sttools,yfonts,apacite,expex,upquote,apa,biblatex-mla,natbib,tikz-qtree,tikz-dependency,appendix}
