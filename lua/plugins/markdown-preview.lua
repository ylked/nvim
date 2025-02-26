return {
  "ylked/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "NODE_OPTIONS=--openssl-legacy-provider bash -c 'npx --yes yarn install && npx --yes yarn build'",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}
