#  Optimal forward modeling of gravitational fields using tesseroids with adaptive discretization 

by [Leonardo Uieda](http://www.leouieda.com/),
[Vanderlei C. Oliveira Jr.](http://fatiando.org/people/oliveira-jr/), and
[Valéria C. F. Barbosa](http://lattes.cnpq.br/0391036221142471)

This is a draft of a paper about an optimal method for modeling gravitational fields due to spherical prism mass elements (tesseroids).

## Reproducing the results

All results and figures in this paper were generated with [IPython notebooks](http://ipython.org/notebook.html) located in the `notebooks` directory of this repository. They use [Tesseroids](http://www.leouieda.com/tesseroids) and [Fatiando a Terra](http://fatiando.org) to perform the calculations.

* [Figures for the Methodology section](http://nbviewer.ipython.org/github/pinga-lab/paper-tesseroids/blob/master/notebooks/methods_figures.ipynb)
* [Results and figures for comparison with a spherical shell](http://nbviewer.ipython.org/github/pinga-lab/paper-tesseroids/blob/master/notebooks/tesseroid_vs_spherical_shell.ipynb)
* [Extra material: results from a comparison with a rectangular prism model](http://nbviewer.ipython.org/github/pinga-lab/paper-tesseroids/blob/master/notebooks/tesseroid_vs_prism.ipynb)

## Compiling the manuscript

The text (`manuscript.tex`)
is written using Latex and BibTex using the Geophysical Journal International template.

To produce the PDF, run:

    make pdf
