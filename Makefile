icon                ?=
size                ?= false

component_name      := $(shell echo $(icon) | awk -f ./tools/capitalizer.awk)
ICONS_URL           := https://raw.githubusercontent.com/twbs/icons/main/icons
ICONS_PATH          := ./src/components/icons
TOOLS_PATH          := ./tools
COMPONENT_EXTENSION := svelte
ASTRO_PROPS         := $(shell echo '---\nexport interface Props {\n\tsize: number;\n}\n\nconst { size } = Astro.props;\n---\n\n')
SVELTE_PROPS        := $(shell echo '<script lang="ts">\n\texport let size\: number;\n<\/script>\n\n')


run:
	pnpm run dev

setup:
	@pnpm install \
	&& chmod +x $(TOOLS_PATH)/unused

icon:
	@curl -s $(ICONS_URL)/$(icon).svg -o $(component_name).$(COMPONENT_EXTENSION)
ifeq ($(size), true)
ifeq ($(COMPONENT_EXTENSION), svelte)
	@sed -i "" -e '1s/^/$(SVELTE_PROPS)/' $(component_name).$(COMPONENT_EXTENSION)
else
	@sed -i "" -e '1s/^/$(ASTRO_PROPS)/' $(component_name).$(COMPONENT_EXTENSION)
endif
	@sed -i "" -e 's/width="16"/width={size}/g' $(component_name).$(COMPONENT_EXTENSION) \
	&& sed -i "" -e 's/height="16"/height={size}/g' $(component_name).$(COMPONENT_EXTENSION)
endif
	@echo '' >> $(component_name).$(COMPONENT_EXTENSION) \
	&& mv $(component_name).$(COMPONENT_EXTENSION) $(ICONS_PATH)

unused:
	@$(TOOLS_PATH)/unused ./src
