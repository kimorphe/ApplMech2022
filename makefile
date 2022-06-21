main.pdf: main.dvi
	dvipdfmx -p a4 main.dvi
main.dvi: main.tex  1_intro.tex 2_experiment.tex 3_timerev.tex Figs/samples.eps\
	 Figs/model_bead.eps Figs/experiment.eps Figs/bscans.eps\
	 Figs/kwfilted_xt.eps Figs/kwfilted_kw.eps Figs/SnapCrackRwv.eps\
	 Figs/sim_model.eps Figs/SnapCrack.eps Figs/SnapNone.eps\
	 Figs/IncTopCrack.eps Figs/IncTopNone.eps Figs/IncBtm.eps\
	 Figs/imgs.eps
	platex main.tex

Figs/samples.eps: Figs/samples.svgz
	inkscape -z -f Figs/samples.svgz -E Figs/samples.eps
Figs/model_bead.eps: Figs/model_bead.svgz
	inkscape -z -f Figs/model_bead.svgz -E Figs/model_bead.eps
Figs/experiment.eps: Figs/experiment.svgz
	inkscape -z -f Figs/experiment.svgz -E Figs/experiment.eps
Figs/bscans.eps: Figs/bscans.svgz
	inkscape -z -f Figs/bscans.svgz -E Figs/bscans.eps
Figs/sim_model.eps: Figs/sim_model.svgz
	inkscape -z -f Figs/sim_model.svgz -E Figs/sim_model.eps
Figs/kwfilted_xt.eps: Figs/kwfilted_xt.svgz
	inkscape -z -f Figs/kwfilted_xt.svgz -E Figs/kwfilted_xt.eps
Figs/SnapCrackRwv.eps: Figs/SnapCrackRwv.svgz
	inkscape -z -f Figs/SnapCrackRwv.svgz -E Figs/SnapCrackRwv.eps
Figs/kwfilted_kw.eps: Figs/kwfilted_kw.svgz
	inkscape -z -f Figs/kwfilted_kw.svgz -E Figs/kwfilted_kw.eps
Figs/SnapCrack.eps: Figs/SnapCrack.svgz
	inkscape -z -f Figs/SnapCrack.svgz -E Figs/SnapCrack.eps
Figs/SnapNone.eps: Figs/SnapNone.svgz
	inkscape -z -f Figs/SnapNone.svgz -E Figs/SnapNone.eps
Figs/IncTopCrack.eps: Figs/IncTopCrack.svgz
	inkscape -z -f Figs/IncTopCrack.svgz -E Figs/IncTopCrack.eps
Figs/IncTopNone.eps: Figs/IncTopNone.svgz
	inkscape -z -f Figs/IncTopNone.svgz -E Figs/IncTopNone.eps
Figs/IncBtm.eps: Figs/IncBtm.svgz
	inkscape -z -f Figs/IncBtm.svgz -E Figs/IncBtm.eps
Figs/imgs.eps: Figs/imgs.svgz
	inkscape -z -f Figs/imgs.svgz -E Figs/imgs.eps
