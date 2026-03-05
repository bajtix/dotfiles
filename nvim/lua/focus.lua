--- this module is to help with focusing stuff

function please_focus()
  local desktop_session = os.getenv("DESKTOP_SESSION")
  if desktop_session == nil then
    return
  end
  if desktop_session == "plasma" then
    os.execute("kdotool search -C --title nvim windowactivate")
  end
end

vim.api.nvim_create_user_command('NvimFocus', please_focus, {})
