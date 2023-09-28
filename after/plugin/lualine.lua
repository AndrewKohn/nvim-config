local colors = {
  jetGrey = '#303030',
  grey = '#9e9e9e',
  skyBlue = '#80a0ff',
  indigo = '#ae81ff',
  black = '#1c1c1c',
  rosePink = '#ff5189',
  yellowGold = '#e3c78a',
  silver = '#c6c6c6',
  error = '#ca1243',
  warning = '#fe8019',
  info = '#0db9d7',
  hint = '#10b981'
}

local customMoonflyTheme = {
  replace = {
    a = { fg = colors.black, bg = colors.rosePink, gui = 'bold' },
    b = { fg = colors.silver, bg = colors.black },
  },
  inactive = {
    a = { fg = colors.grey, bg = colors.jetGrey, gui = 'bold' },
    b = { fg = colors.grey, bg = colors.jetGrey },
    c = { fg = colors.grey, bg = colors.jetGrey },
  },
  normal = {
    a = { fg = colors.black, bg = colors.skyBlue, gui = 'bold' },
    b = { fg = colors.grey, bg = colors.black },
    c = { fg = colors.error, bg = colors.jetGrey },
  },
  visual = {
    a = { fg = colors.black, bg = colors.indigo, gui = 'bold' },
    b = { fg = colors.silver, bg = colors.black },
  },
  insert = {
    a = { fg = colors.black, bg = colors.silver, gui = 'bold' },
    b = { fg = colors.silver, bg = colors.black },
  },
  command = {
    a = { fg = colors.black, bg = colors.yellowGold, gui = 'bold' },
    b = { fg = colors.silver, bg = colors.black },
  },
}

local empty = require('lualine.component'):extend()
function empty:draw(default_highlight)
  self.status = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < 'x'
    for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = colors.jetGrey, bg = colors.jetGrey } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= 'table' then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = '' } or { left = '' }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
end

local function modified()
  if vim.bo.modified then
    return '+'
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return '-'
  end
  return ''
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = customMoonflyTheme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = process_sections {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      { 'filename', file_status = false,          path = 1 },
      { modified,   color = { fg = colors.error } },
      {
        '%w',
        cond = function()
          return vim.wo.previewwindow
        end,
      },
      {
        '%r',
        cond = function()
          return vim.bo.readonly
        end,
      },
      {
        '%q',
        cond = function()
          return vim.bo.buftype == 'quickfix'
        end,
      },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'error' },
        diagnostics_color = { error = { bg = colors.black, fg = colors.error } },
      },
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'warn' },
        diagnostics_color = { warn = { bg = colors.black, fg = colors.warning } },
      },
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'info' },
        diagnostics_color = { info = { bg = colors.black, fg = colors.info } },
      },
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'hint' },
        diagnostics_color = { hint = { bg = colors.black, fg = colors.hint } },
      },
      'diff',
      search_result, 'filetype' },
    lualine_z = { '%l:%c', '%p%%/%L' },
  },
  inactive_sections = {
    lualine_c = { '%f %y %m' },
    lualine_x = {},
  },
}
