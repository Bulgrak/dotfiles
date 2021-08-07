local pid = vim.fn.getpid()
local omnisharp_bin = "/mnt/c/omnisharp/run"

require'lspconfig'.omnisharp.setup{
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) };
}
