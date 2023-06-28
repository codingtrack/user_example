-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    -- telescope
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },
    ["<leader>fr"] = { "<cmd>Telescope frecency<cr>", desc = "Find frecency" },
    ["<leader>fg"] = { function() require("telescope.builtin").registers() end, desc = "Find registers" },
    -- git
    ["<leader>gg"] = { "<cmd>Neogit<cr>", desc = "Neogit" },
    ["<leader>gdo"] = { "<cmd>DiffviewOpen<cr>", desc = "Git diffview open" },
    ["<leader>gdc"] = { "<cmd>DiffviewClose<cr>", desc = "Git diffview close" },
    ["<leader>gdf"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "Git diffview filehistory" },
    -- spectre
    ["<leader>ss"] = { "<cmd>lua require('spectre').open()<cr>", desc = "Open spectre" },
    ["<leader>sw"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", desc = "Search current word" },
    ["<leader>sp"] = {
      "<cmd>lua require('spectre').open_file_search({select_word=true})<cr>",
      desc = "Search on current file",
    },
    -- hop
    ["<leader>hw"] = { "<cmd>HopWord<CR>", desc = "HopWord" },
    ["<leader>hl"] = { "<cmd>HopLine<CR>", desc = "HopLine" },
    -- makrdown
    ["<leader>md"] = { "<cmd>MarkdownPreviewToggle<CR>", desc = "MarkdownPreviewToggle" },
  },
  v = {
    ["<leader>sw"] = { "<cmd>lua require('spectre').open_visual()<cr>", desc = "Search current word" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
