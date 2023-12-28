-- not working
function runOllama()
    local arguments = {}
    args = {}
    for _, arg in ipairs(arguments) do
        table.insert(args, arg)
    end
    local query = table.concat(args, " ")
    local handle = io.popen("ollama run dolphin-mixtral" .. query)
    local result = handle:read("*a")
    handle:close()
    print(result)
    return result
end

vim.cmd("command! -nargs=* Ollama lua runOllama(<f-args>)")

vim.keymap.set("n", "<leader>m", ':Ollama ')
