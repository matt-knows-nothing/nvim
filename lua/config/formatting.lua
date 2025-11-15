local M = {}

-- run a shell command and return output
local function run(cmd)
	local handle = io.popen(cmd)
	if not handle then return end
	local result = handle:read("*a")
	handle:close()
	return result
end

-- write buffer contents to temp file
local function write_tmp(buf)
	local tmp = vim.fn.tempname()
	vim.api.nvim_buf_call(buf, function()
		vim.cmd("write! " .. tmp)
	end)
	return tmp
end

-- read file into buffer
local function read_file(buf, file)
	local data = {}
	for line in io.lines(file) do
		table.insert(data, line)
	end
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, data)
end

-- formatter mapping
M.formatters = {
	lua = function(buf)
		local tmp = write_tmp(buf)
		run("stylua " .. tmp)
		read_file(buf, tmp)
	end,

	rust = function(buf)
		local tmp = write_tmp(buf)
		run("rustfmt " .. tmp)
		read_file(buf, tmp)
	end,

	c = function(buf)
		local tmp = write_tmp(buf)
		run("clang-format -i " .. tmp)
		read_file(buf, tmp)
	end,

	cpp = function(buf)
		local tmp = write_tmp(buf)
		run("clang-format -i " .. tmp)
		read_file(buf, tmp)
	end,

	javascript = function(buf)
		local tmp = write_tmp(buf)
		run("prettier --write " .. tmp)
		read_file(buf, tmp)
	end,

	typescript = function(buf)
		local tmp = write_tmp(buf)
		run("prettier --write " .. tmp)
		read_file(buf, tmp)
	end,

	json = function(buf)
		local tmp = write_tmp(buf)
		run("prettier --write " .. tmp)
		read_file(buf, tmp)
	end,

	html = function(buf)
		local tmp = write_tmp(buf)
		run("prettier --write " .. tmp)
		read_file(buf, tmp)
	end,
}

-- fallback: use gg=G
local function vim_indent(buf)
	vim.api.nvim_buf_call(buf, function()
		vim.cmd("normal! gg=G")
	end)
end

-- main formatter
function M.format()
	local buf = vim.api.nvim_get_current_buf()
	local ft = vim.bo[buf].filetype

	local f = M.formatters[ft]
	if f then
		f(buf)
	else
		vim_indent(buf)
	end
end

return M
