resultados.pdf : resultados.tex plot.pdf plot1.pdf
	pdflatex resultados.tex
plot.pdf : datos.dat plot.pdf
	python plotdatos.py
plot1.pdf : datos1.dat plot1.pdf
	python plotdatos1.py
datos.dat : makedatos.py
	python makedatos.py > datos.dat
datos1.dat : makedatos1.py
	python makedatos.py > datos1.dat	


	
