return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<leader>xx"] = {"<cmd>echo 'test'<cr>", desc="test"},
          ["<leader>mp"] = {"<cmd>MarkdownPreview<cr>", desc="Preview markdown file"},
          ["<leader>mm"] = {"<cmd>!cd build && cmake -G Ninja ..<cr>"},
          ["<F4>"] = {
              function()
                local filename = vim.fn.fnamemodify(vim.fn.expand('%:t'), ':r') 
                local ninja_cmd = "ninja -C build " .. filename
                
                local result = vim.fn.system(ninja_cmd)
              
                if vim.v.shell_error == 0 then
                  local run_cmd = "TermExec cmd='build/bin/" .. filename .. "'"
                  vim.cmd(run_cmd)
                else
                  local run_cmd = "TermExec cmd='" .. ninja_cmd .. "'"
                  vim.cmd(run_cmd)
                end
              end,
            desc="Run with Ninja"}
        }
      }
    }
  }
}
