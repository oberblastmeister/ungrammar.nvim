local parsers = require "nvim-treesitter.parsers"
local installer = require "nvim-treesitter.install"

local M = {}

function M.init()
  parsers.get_parser_configs().ungrammar = {
    install_info = {
      url = "https://github.com/oberblastmeister/tree-sitter-ungrammar",
      files = { "src/parser.c" },
    },
    maintainers = {"@oberblastmeister"}
  }

  if not parsers.has_parser("ungrammar") then
    installer.update("ungrammar")
  end
end

return M
