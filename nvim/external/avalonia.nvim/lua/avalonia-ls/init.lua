local M = {}

M.defaults = {
  cmd = { "AvaloniaLanguageServer" },     -- adjust to how your binary is actually invoked
  filetypes = { "axaml" },
  root_markers = { "*.sln", "*.csproj", ".git", "*.slnx" },
}

local function get_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()

  -- blink.cmp
  local has_blink, blink = pcall(require, "blink.cmp")
  if has_blink then
    capabilities = blink.get_lsp_capabilities(capabilities)
  end

  -- nvim-cmp
  local has_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
  if has_cmp then
    capabilities = vim.tbl_deep_extend("force", capabilities, cmp_lsp.default_capabilities())
  end

  return capabilities
end

function M.setup(opts)
  opts = vim.tbl_deep_extend("force", M.defaults, opts or {})

  vim.filetype.add({
    extension = { axaml = "axaml" },
  })

  vim.lsp.config("avalonia_lsp", {
    cmd = opts.cmd,
    filetypes = opts.filetypes,
    root_markers = opts.root_markers,
    capabilities = opts.capabilities or get_capabilities()
  })

  vim.lsp.enable("avalonia_lsp")
end

return M
