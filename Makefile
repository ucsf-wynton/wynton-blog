all: check

check: spelling

preview:
	quarto preview &

spelling:
	@echo "$@ ..."
	@Rscript -e 'paths <- dir(pattern = "*[.](md|qmd)$$", full.names = TRUE, recursive = TRUE); print(paths); wordlist <- unique(sort(readLines("WORDLIST"))); words <- spelling::spell_check_files(paths, ignore = wordlist); print(words); ok <- (nrow(words) == 0); quit(status = !ok)' || { printf "\n\nSUGGESTION: If you believe these are correctly spelled, add them to 'WORDLIST'\n\n"; exit 1; }
