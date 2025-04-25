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
