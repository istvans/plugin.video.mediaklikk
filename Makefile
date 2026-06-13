ADDON_ID := plugin.video.mediaklikk
ZIP := $(ADDON_ID).zip

.PHONY: all clean

all: $(ZIP)

$(ZIP):
	cd .. && zip -r "$(ZIP)" "$(ADDON_ID)" \
		-x "$(ADDON_ID)/.git/*" \
		-x "$(ADDON_ID)/.gitignore" \
		-x "$(ADDON_ID)/*.pyc" \
		-x "$(ADDON_ID)/**/__pycache__/*"

clean:
	rm -f ../$(ZIP)