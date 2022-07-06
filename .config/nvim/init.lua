pcall(require, "impatient")

if require 'daco.first_load' () then
	return
end

-------- General config -------------
require 'packer/plugins'
require 'settings.settings'
require 'settings.keymaps'
require 'settings.automations'

-------------- Plugins --------------
require 'plugins-config.themes.onedark'
--require 'plugins-config.themes.tokyonight'
--require 'plugins-config.themes.ayu'
require 'plugins-config.lsp'
require 'plugins-config.identline'
require 'plugins-config.tmux-navigation'
require 'plugins-config.format-config'
require 'plugins-config.colorizer'
