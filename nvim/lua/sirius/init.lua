require('sirius.remap')
require('sirius.set')

vim.api.nvim_create_autocmd({'BufWritePre'}, {
	pattern = {'*'},
	callback = function()
		local save_cursor = vim.fn.getpos('.')
		pcall(function() vim.cmd [[%s/\s\+$//e]] end)
		vim.fn.setpos('.', save_cursor)
	end,
})

vim.api.nvim_create_autocmd({'BufWritePre'}, {
    pattern = '*.h,*.hpp,*.c,*.cpp',
    callback = function()
        local save_cursor = vim.fn.getpos('.')
        vim.lsp.buf.format()
        vim.fn.setpos('.', save_cursor)
    end,
})

