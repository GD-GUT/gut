test: usat
	cp out/usat.gut.js /var/www/gut.js

usat: comscore
	mkdir -p out
	./preloader      >out/usat.gut.js
	./comscore      >>out/usat.gut.js
	./sitecatalyst  >>out/usat.gut.js
	./compat        >>out/usat.gut.js
