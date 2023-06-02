local colors = require('iceberg.palette')

local function select_colors()
  local selected = { none = 'none' }
  selected = vim.tbl_extend('force', selected, colors['iceberg'])
  selected = vim.tbl_extend('force', selected, vim.g.iceberg_config.colors)
  return selected
end

return select_colors()
