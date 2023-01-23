local function get_token(file)
  local fhandle = io.open(file, "rb")
    if not fhandle then return nil end

    local contents = fhandle:read("*l")
    fhandle:close()
    return contents
end

return require("testaustime").setup({
    token = get_token(os.getenv("HOME") .. "/code/neovim/plugins/testaustime/.token"),
    editor_name = "NeoVim",
})
