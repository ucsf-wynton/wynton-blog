all: \
    ucsf_wynton_logo-black-267CB9-left.png \
    ucsf_wynton_logo-black-006699-left.png \
    ucsf_wynton_logo-black-267CB9-square.png \
    ucsf_wynton_logo-black-006699-square.png

ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png:
	wget https://rawgit.com/UCSF-CBC/UCSF-logo/master/images/ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png

ucsf_wynton_logo-black-%-left.png: ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png
	convert -background none ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png -trim +repage \( -fill "#$*" -font 'TeXGyreHeros-Bold' -pointsize 1600 label:'Wynton' -trim +repage \) -gravity West -append "$@"

ucsf_wynton_logo-black-%-square.png: ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png
	convert -background none ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png -trim +repage \( -fill "#$*" -font 'TeXGyreHeros-Bold' -pointsize 1600 label:'Wynton' -trim +repage \) -gravity center -append -gravity center -background none -extent '5743x5743' -bordercolor none -border 500 "$@"


