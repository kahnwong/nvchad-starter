local lint = require "lint"

lint.linters_by_ft = {
  css = { "stylelint" },
  dockerfile = { "hadolint" },
  html = { "htmlhint" },
  markdown = { "markdownlint-cli2" },
  terraform = { "tflint" },
  vue = { "eslint_d", "stylelint" },
}

local function is_github_workflow()
  local path = vim.api.nvim_buf_get_name(0)
  return path:match("/%.github/workflows/.*%.ya?ml$") ~= nil
end

vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
    if is_github_workflow() then
      lint.try_lint "actionlint"
    end
  end,
})
