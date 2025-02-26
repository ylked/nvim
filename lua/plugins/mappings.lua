return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<leader>xx"] = {"<cmd>echo 'test'<cr>", desc="test"},
          ["<leader>mp"] = {"<cmd>MarkdownPreview<cr>", desc="Preview markdown file"},
          ["<leader>mb"] = {"<cmd>make run PROG=fnamemodify(expand('%'), ':r')", desc="Make run"}
        }
      }
    }
  }
}
