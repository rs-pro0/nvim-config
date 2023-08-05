for _, file in pairs(vim.fn.readdir(os.getenv("HOME") .. "/.config/nvim/lua/rostyslav/plugins")) do
	local file = "rostyslav.plugins." .. file:match("(.+)%..+")
	if file ~= "rostyslav.plugins.loader" then
		require(file)
	end
end
