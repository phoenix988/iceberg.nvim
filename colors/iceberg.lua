for k in pairs(package.loaded) do
  if k:match('.*iceberg.*') then package.loaded[k] = nil end
end

require('iceberg').setup()
require('iceberg').colorscheme()
