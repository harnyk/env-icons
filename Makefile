all: white red green

dist/%.red.svg: env.svg
	mkdir -p dist
	cat $< | sed s/env/$*/ > $@

dist/%.green.svg: env.svg
	mkdir -p dist
	cat $< | sed s/env/$*/ | sed s/ffb0a1/b0ffa1/ > $@

dist/%.white.svg: env.svg
	mkdir -p dist
	cat $< | sed s/env/$*/ | sed s/ffb0a1/ffffff/ > $@

dist/%.png: dist/%.svg 
	inkscape $< --export-png=$@ -w128

red: dist/qa.red.png dist/fib.red.png dist/tes.red.png dist/tur.red.png dist/prod.red.png dist/gang.red.png dist/dev.red.png dist/hop.red.png
green: dist/qa.green.png dist/fib.green.png dist/tes.green.png dist/tur.green.png dist/prod.green.png dist/gang.green.png dist/dev.green.png dist/hop.green.png
white: dist/qa.white.png dist/fib.white.png dist/tes.white.png dist/tur.white.png dist/prod.white.png dist/gang.white.png dist/dev.white.png dist/hop.white.png
