local keys = {}

local wezterm = require("wezterm")

local act = wezterm.action

for i = 1, 9 do
	table.insert(keys, {
		key = tostring(i),
		mods = "CTRL",
		action = act.ActivateTab(i - 1),
	})
end

table.insert(keys, {
	key = "t",
	mods = "CTRL",
	action = act.SpawnTab("CurrentPaneDomain"),
})

table.insert(keys, {
	key = "w",
	mods = "CTRL",
	action = act.CloseCurrentTab({ confirm = true }),
})
--
table.insert(keys, {
	key = "c",
	mods = "CTRL",
	action = act.CopyTo("Clipboard"),
})

table.insert(keys, {
	key = "v",
	mods = "CTRL",
	action = act.PasteFrom("Clipboard"),
})

return keys
