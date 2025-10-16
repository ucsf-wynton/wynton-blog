all: check

check: spelling

start:
	quarto preview --port 4444 &
	xdg-open http://127.0.0.1:4444/

stop:
	pkill -SIGINT deno || true
	pkill -SIGINT quarto || true

restart: stop start

spelling:
	@echo "$@ ..."
	@Rscript -e 'paths <- dir(pattern = "*[.](md|qmd)$$", full.names = TRUE, recursive = TRUE); print(paths); wordlist <- unique(sort(readLines("WORDLIST"))); words <- spelling::spell_check_files(paths, ignore = wordlist); print(words); ok <- (nrow(words) == 0); quit(status = !ok)' || { printf "\n\nSUGGESTION: If you believe these are correctly spelled, add them to 'WORDLIST'\n\n"; exit 1; }

images/favicon.ico: images/logo.png
	cd $(<D); \
	convert $(<F) -resize 256x256 -transparent white favicon-256.png; \
	convert favicon-256.png -resize   16x16 favicon-16.png;  \
	convert favicon-256.png -resize   32x32 favicon-32.png;  \
	convert favicon-256.png -resize   64x64 favicon-64.png;  \
	convert favicon-256.png -resize 128x128 favicon-128.png; \
	convert favicon-16.png favicon-32.png favicon-64.png favicon-128.png favicon-256.png -colors 256 $(@F)
