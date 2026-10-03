
vim.keymap.set('n', '<F9>', function()
  vim.cmd('write') -- Save current file
  local ft = vim.bo.filetype
  local name = vim.fn.expand('%:p')
  local stem = vim.fn.expand('%:p:r')
  local dir = vim.fn.expand('%:p:h')
  local class = vim.fn.expand('%:t:r')

  if ft == 'cpp' then
    vim.cmd('vsplit | term g++ "' .. name .. '" -o "' .. stem .. '" && "' .. stem .. '"')
  elseif ft == 'c' then
    vim.cmd('vsplit | term gcc "' .. name .. '" -o "' .. stem .. '" && "' .. stem .. '"')
  elseif ft == 'python' then
    vim.cmd('vsplit | term python3 "' .. name .. '"')
  elseif ft == 'rust' then
    vim.cmd('vsplit | term cargo run')
  elseif ft == 'javascript' then
    vim.cmd('vsplit | term node "' .. name .. '"')
  elseif ft == 'lua' then
    vim.cmd('vsplit | term lua "' .. name .. '"')
  elseif ft == 'java' then
    -- Compiles the file, changes to its directory, and runs the class name
    vim.cmd('vsplit | term javac "' .. name .. '" && cd "' .. dir .. '" && java "' .. class .. '"')
  elseif ft == 'asm' then
    local obj = stem .. '.o'
    vim.cmd('vsplit | term nasm -f elf64 "' .. name .. '" -o "' .. obj .. '" && ld "' .. obj .. '" -o "' .. stem .. '" && "' .. stem .. '"')
  end
end, { desc = 'Compile and run current file' })
