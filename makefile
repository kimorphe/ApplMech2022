main.pdf: main.dvi
	dvipdfmx -p a4 main.dvi
main.dvi: main.tex  1_intro.tex
	platex main.tex
#       Figs/samples.eps Figs/cod.eps Figs/fig3.eps Figs/ut_setup.eps Figs/samples.svgz Figs/map.eps \
Figs/samples.eps: Figs/samples.svgz
	inkscape -z -f Figs/samples.svgz -E Figs/samples.eps
