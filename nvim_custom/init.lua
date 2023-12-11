-- -- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.g.copilot_assume_mapped = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.g.doge_doc_standard_python = "google"
vim.api.nvim_set_option("clipboard","unnamed")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
