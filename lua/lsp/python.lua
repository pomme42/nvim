vim.lsp.config['python_lsp'] = {
	cmd = { 'pylsp' },
	filetypes = { 'python' },
	root_markers = { '.git', 'LICENSE', 'README.md' },
	settings = {
		pylsp = {
			plugins = {
				-- formatter options
				black = { enabled = true, line_length = 79, },
				autopep8 = { enabled = false },
				yapf = { enabled = false },
				-- linter options
				flake8 = { enabled = true },
				pylint = { enabled = false },
				pyflakes = { enabled = false },
				pycodestyle = { enabled = false },
				-- type checker
				pylsp_mypy = { enabled = true, strict=true },
				-- auto-completion options
				jedi_completion = { fuzzy = true },
				-- import sorting
				pyls_isort = { enabled = true },
			},
		},
	}
}
vim.lsp.enable("python_lsp")
vim.cmd("autocmd BufWritePre *.py lua vim.lsp.buf.format({ async = false })")
