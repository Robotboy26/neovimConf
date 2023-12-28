function Hello()
    print("Hello world!")
end

-- create and delete a shell window (made by chatGPT (mostly))
-- Function to send a key event
function send_key_event(key)
    -- Replace any special characters with their escape sequences
    key = key:gsub('<', '<lt>')
    
    -- Send the key event
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, false, true), 'n', true)
end

-- Function to toggle shell window
function toggle_shell(split_direction)
    if split_direction == "vsplit" then
        vim.cmd(split_direction .. " | term")
    else
        vim.cmd("below new | term") -- if split put terminal at bottom
    end
    send_key_event('i') -- to put the terminal in input mode
end

-- Open shell vertically
vim.api.nvim_set_keymap('n', '<Leader>d', '<Cmd>lua toggle_shell("vsplit")<CR>', { noremap = true, silent = true })
-- Open shell horizontally
vim.api.nvim_set_keymap('n', '<Leader>k', '<Cmd>lua toggle_shell("split")<CR>', { noremap = true, silent = true })
