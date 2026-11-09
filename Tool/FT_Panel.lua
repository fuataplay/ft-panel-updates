-- FT Panel (c) Fuat. Licensed software. Program code: ScriptResources/FT_Panel/ft_core.bin
ScriptName = "FT_Panel"
do
	local A = {
		["\195\135"] = "\199", ["\195\167"] = "\231", ["\196\158"] = "\208", ["\196\159"] = "\240",
		["\196\176"] = "\221", ["\196\177"] = "\253", ["\195\150"] = "\214", ["\195\182"] = "\246",
		["\197\158"] = "\222", ["\197\159"] = "\254", ["\195\156"] = "\220", ["\195\188"] = "\252"
	}
	local src = debug.getinfo(1, "S").source:gsub("^@", ""):gsub("\\", "/")
	local dir = (src:match("^(.*)/[^/]*$") or "."):gsub("/Tool$", "")
	FT_Panel_INSTALL_DIR = dir .. "/ScriptResources/FT_Panel"
	local path = dir .. "/ScriptResources/FT_Panel/ft_core.bin"
	local core, err = loadfile(path, "b")
	if not core then core, err = loadfile((path:gsub("[\195-\197][\128-\191]", A)), "b") end
	if not core then error("FT Panel: ft_core.bin could not be loaded. Reinstall the package. " .. tostring(err)) end
	core()
end
