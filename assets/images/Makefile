all: \
    ucsf_wynton_logo-black-267CB9.png \
    ucsf_wynton_logo-black-006699.png \
    ucsf_wynton_logo-black-267CB9-centered.png \
    ucsf_wynton_logo-black-006699-centered.png

ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png:
	wget https://rawgit.com/UCSF-CBC/UCSF-logo/master/images/ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png

ucsf_wynton_logo-black-%.png: ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png
	color=$*; \
	convert -background none ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png -trim +repage \( -fill "#$${color}" -font 'TeXGyreHeros-Bold' -pointsize 1600 label:'Wynton' -trim +repage \) -gravity West -append ucsf_wynton_logo-black-"$${color}".png;

ucsf_wynton_logo-black-%-centered.png: ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png
	color=$*; \
	convert -background none ucsf_logo_K_OTL_9,1200dpi,000000,transparent.png -trim +repage \( -fill "#$${color}" -font 'TeXGyreHeros-Bold' -pointsize 1600 label:'Wynton' -trim +repage \) -gravity center -append ucsf_wynton_logo-black-"$${color}"-centered.png;
