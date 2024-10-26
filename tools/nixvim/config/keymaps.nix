[
  # default
  # default
  # default
  {
    mode = ["n" "x"];
    key = "j";
    action = "v:count == 0 ? 'gj' : 'j'";
    options = {
      expr = true;
      silent = true;
    };
  }
  {
    mode = ["n" "x"];
    key = "<Down>";
    action = "v:count == 0 ? 'gj' : 'j'";
    options = {
      expr = true;
      silent = true;
    };
  }
  {
    mode = ["n" "x"];
    key = "k";
    action = "v:count == 0 ? 'gk' : 'k'";
    options = {
      expr = true;
      silent = true;
    };
  }
  {
    mode = ["n" "x"];
    key = "<Up>";
    action = "v:count == 0 ? 'gk' : 'k'";
    options = {
      expr = true;
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<C-h>";
    action = "<C-w>h";
    options = {
      desc = "Go to Left Window";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<C-j>";
    action = "<C-w>j";
    options = {
      desc = "Go to Lower Window";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<C-k>";
    action = "<C-w>k";
    options = {
      desc = "Go to Upper Window";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<C-l>";
    action = "<C-w>l";
    options = {
      desc = "Go to Right Window";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<C-Up>";
    action = "<cmd>resize +2<cr>";
    options = {desc = "Increase Window Height";};
  }
  {
    mode = "n";
    key = "<C-Down>";
    action = "<cmd>resize -2<cr>";
    options = {desc = "Decrease Window Height";};
  }
  {
    mode = "n";
    key = "<C-Left>";
    action = "<cmd>vertical resize -2<cr>";
    options = {desc = "Decrease Window Width";};
  }
  {
    mode = "n";
    key = "<C-Right>";
    action = "<cmd>vertical resize +2<cr>";
    options = {desc = "Increase Window Width";};
  }
  {
    mode = "n";
    key = "<A-j>";
    action = "<cmd>m .+1<cr>==";
    options = {desc = "Move Down";};
  }
  {
    mode = "n";
    key = "<A-k>";
    action = "<cmd>m .-2<cr>==";
    options = {desc = "Move Up";};
  }
  {
    mode = "i";
    key = "<A-j>";
    action = "<esc><cmd>m .+1<cr>==gi";
    options = {desc = "Move Down";};
  }
  {
    mode = "i";
    key = "<A-k>";
    action = "<esc><cmd>m .-2<cr>==gi";
    options = {desc = "Move Up";};
  }
  {
    mode = "v";
    key = "<A-j>";
    action = ":m '>+1<cr>gv=gv";
    options = {desc = "Move Down";};
  }
  {
    mode = "v";
    key = "<A-k>";
    action = ":m '<-2<cr>gv=gv";
    options = {desc = "Move Up";};
  }
  {
    mode = "i";
    key = ";";
    action = ";<c-g>u";
  }
  {
    mode = "i";
    key = ".";
    action = ".<c-g>u";
  }
  {
    mode = "i";
    key = ";";
    action = ";<c-g>u";
  }
  {
    mode = ["i" "x" "n" "s"];
    key = "<C-s>";
    action = "<cmd>w<cr><esc>";
    options = {desc = "Save File";};
  }
  {
    mode = ["i" "n"];
    key = "<esc>";
    action = "<cmd>noh<cr><esc>";
    options = {desc = "Escape and Clear hlsearch";};
  }
  {
    mode = "n";
    key = "<leader>ur";
    action = "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>";
    options = {desc = "Redraw / Clear hlsearch / Diff Update";};
  }
  {
    mode = "n";
    key = "n";
    action = "'Nn'[v:searchforward].'zv'";
    options = {
      expr = true;
      desc = "Next Search Result";
    };
  }
  {
    mode = "x";
    key = "n";
    action = "'Nn'[v:searchforward]";
    options = {
      expr = true;
      desc = "Next Search Result";
    };
  }
  {
    mode = "o";
    key = "n";
    action = "'Nn'[v:searchforward]";
    options = {
      expr = true;
      desc = "Next Search Result";
    };
  }
  {
    mode = "n";
    key = "N";
    action = "'nN'[v:searchforward].'zv'";
    options = {
      expr = true;
      desc = "Prev Search Result";
    };
  }
  {
    mode = "x";
    key = "N";
    action = "'nN'[v:searchforward]";
    options = {
      expr = true;
      desc = "Prev Search Result";
    };
  }
  {
    mode = "o";
    key = "N";
    action = "'nN'[v:searchforward]";
    options = {
      expr = true;
      desc = "Prev Search Result";
    };
  }
  {
    mode = "n";
    key = "<leader>cd";
    action = "vim.diagnostic.open_float";
    options = {desc = "Line Diagnostics";};
  }
  {
    mode = "n";
    key = "]d";
    action = "diagnostic_goto(true)";
    options = {desc = "Next Diagnostic";};
  }
  {
    mode = "n";
    key = "[d";
    action = "diagnostic_goto(false)";
    options = {desc = "Prev Diagnostic";};
  }
  {
    mode = "n";
    key = "]e";
    action = "diagnostic_goto(true 'ERROR')";
    options = {desc = "Next Error";};
  }
  {
    mode = "n";
    key = "[e";
    action = "diagnostic_goto(false 'ERROR')";
    options = {desc = "Prev Error";};
  }
  {
    mode = "n";
    key = "]w";
    action = "diagnostic_goto(true 'WARN')";
    options = {desc = "Next Warning";};
  }
  {
    mode = "n";
    key = "[w";
    action = "diagnostic_goto(false 'WARN')";
    options = {desc = "Prev Warning";};
  }
  {
    mode = "n";
    key = "<leader>qq";
    action = "<cmd>qa<cr>";
    options = {desc = "Quit All";};
  }
  {
    mode = "n";
    key = "<leader>ui";
    action = "vim.show_pos";
    options = {desc = "Inspect Pos";};
  }
  {
    mode = "t";
    key = "<esc><esc>";
    action = "<c-\\><c-n>";
    options = {desc = "Enter Normal Mode";};
  }
  {
    mode = "t";
    key = "<C-h>";
    action = "<cmd>wincmd h<cr>";
    options = {desc = "Go to Left Window";};
  }
  {
    mode = "t";
    key = "<C-j>";
    action = "<cmd>wincmd j<cr>";
    options = {desc = "Go to Lower Window";};
  }
  {
    mode = "t";
    key = "<C-k>";
    action = "<cmd>wincmd k<cr>";
    options = {desc = "Go to Upper Window";};
  }
  {
    mode = "t";
    key = "<C-l>";
    action = "<cmd>wincmd l<cr>";
    options = {desc = "Go to Right Window";};
  }
  {
    mode = "t";
    key = "<C-/>";
    action = "<cmd>close<cr>";
    options = {desc = "Hide Terminal";};
  }
  {
    mode = "n";
    key = "<leader>ww";
    action = "<C-W>p";
    options = {
      desc = "Other Window";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<leader>wd";
    action = "<C-W>c";
    options = {
      desc = "Delete Window";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<leader>w-";
    action = "<C-W>s";
    options = {
      desc = "Split Window Below";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<leader>w|";
    action = "<C-W>v";
    options = {
      desc = "Split Window Right";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<leader>-";
    action = "<C-W>s";
    options = {
      desc = "Split Window Below";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<leader>|";
    action = "<C-W>v";
    options = {
      desc = "Split Window Right";
      remap = true;
    };
  }
  {
    mode = "n";
    key = "<leader><tab>l";
    action = "<cmd>tablast<cr>";
    options = {desc = "Last Tab";};
  }
  {
    mode = "n";
    key = "<leader><tab>f";
    action = "<cmd>tabfirst<cr>";
    options = {desc = "First Tab";};
  }
  {
    mode = "n";
    key = "<leader><tab><tab>";
    action = "<cmd>tabnew<cr>";
    options = {desc = "New Tab";};
  }
  {
    mode = "n";
    key = "<leader><tab>]";
    action = "<cmd>tabnext<cr>";
    options = {desc = "Next Tab";};
  }
  {
    mode = "n";
    key = "<leader><tab>d";
    action = "<cmd>tabclose<cr>";
    options = {desc = "Close Tab";};
  }
  {
    mode = "n";
    key = "<leader><tab>[";
    action = "<cmd>tabprevious<cr>";
    options = {desc = "Previous Tab";};
  }
  # default
  # default
  # default

  # copilot-chat.nix
  # copilot-chat.nix
  # copilot-chat.nix
  {
    key = "<leader>ct";
    action = "<CMD>CopilotChatToggle<CR>";
    options.desc = "Toggle Copilot Chat Window";
  }
  {
    key = "<leader>cs";
    action = "<CMD>CopilotChatStop<CR>";
    options.desc = "Stop current Copilot output";
  }
  {
    key = "<leader>cr";
    action = "<CMD>CopilotChatReview<CR>";
    options.desc = "Review the selected code";
  }
  {
    key = "<leader>ce";
    action = "<CMD>CopilotChatExplain<CR>";
    options.desc = "Give an explanation for the selected code";
  }
  {
    key = "<leader>cd";
    action = "<CMD>CopilotChatDocs<CR>";
    options.desc = "Add documentation for the selection";
  }
  {
    key = "<leader>cp";
    action = "<CMD>CopilotChatTests<CR>";
    options.desc = "Add tests for my code";
  }
  # copilot-chat.nix
  # copilot-chat.nix
  # copilot-chat.nix

  # neo-tree.nix
  # neo-tree.nix
  # neo-tree.nix
  {
    mode = ["n"];
    key = "<leader>e";
    action = "<cmd>Neotree toggle<cr>";
    options = {desc = "Open/Close Neotree";};
  }
  # neo-tree.nix
  # neo-tree.nix
  # neo-tree.nix

  # undotree.nix
  # undotree.nix
  # undotree.nix
  {
    mode = "n";
    key = "<leader>ut";
    action = "<cmd>UndotreeToggle<CR>";
    options = {
      silent = true;
      desc = "Undotree";
    };
  }
  # undotree.nix
  # undotree.nix
  # undotree.nix

  # lazygit.nix
  # lazygit.nix
  # lazygit.nix
  {
    mode = "n";
    key = "<leader>gg";
    action = "<cmd>LazyGit<CR>";
    options = {
      desc = "LazyGit (root dir)";
    };
  }
  # lazygit.nix
  # lazygit.nix
  # lazygit.nix

  # bufferline.nix
  # bufferline.nix
  # bufferline.nix
  {
    mode = "n";
    key = "]b";
    action = "<cmd>BufferLineCycleNext<cr>";
    options = {
      desc = "Cycle to next buffer";
    };
  }
  {
    mode = "n";
    key = "[b";
    action = "<cmd>BufferLineCyclePrev<cr>";
    options = {
      desc = "Cycle to previous buffer";
    };
  }
  {
    mode = "n";
    key = "<S-l>";
    action = "<cmd>BufferLineCycleNext<cr>";
    options = {
      desc = "Cycle to next buffer";
    };
  }
  {
    mode = "n";
    key = "<S-h>";
    action = "<cmd>BufferLineCyclePrev<cr>";
    options = {
      desc = "Cycle to previous buffer";
    };
  }
  {
    mode = "n";
    key = "<leader>bd";
    action = "<cmd>bdelete<cr>";
    options = {
      desc = "Delete buffer";
    };
  }
  {
    mode = "n";
    key = "<leader>bl";
    action = "<cmd>BufferLineCloseLeft<cr>";
    options = {
      desc = "Delete buffers to the left";
    };
  }
  {
    mode = "n";
    key = "<leader>bo";
    action = "<cmd>BufferLineCloseOthers<cr>";
    options = {
      desc = "Delete other buffers";
    };
  }
  {
    mode = "n";
    key = "<leader>bp";
    action = "<cmd>BufferLineTogglePin<cr>";
    options = {
      desc = "Toggle pin";
    };
  }
  {
    mode = "n";
    key = "<leader>bP";
    action = "<Cmd>BufferLineGroupClose ungrouped<CR>";
    options = {
      desc = "Delete non-pinned buffers";
    };
  }
  # bufferline.nix
  # bufferline.nix
  # bufferline.nix

  # markdown-preview.nix
  # markdown-preview.nix
  # markdown-preview.nix
  {
    mode = "n";
    key = "<leader>mp";
    action = "<cmd>MarkdownPreview<cr>";
    options = {
      desc = "Toggle Markdown Preview";
    };
  }
  # markdown-preview.nix
  # markdown-preview.nix
  # markdown-preview.nix

  # telescope.nix
  # telescope.nix
  # telescope.nix
  {
    mode = "n";
    key = "<leader>sd";
    action = "<cmd>Telescope diagnostics bufnr=0<cr>";
    options = {
      desc = "Document diagnostics";
    };
  }
  {
    mode = "n";
    key = "<leader>fe";
    action = "<cmd>Telescope file_browser<cr>";
    options = {
      desc = "File browser";
    };
  }
  {
    mode = "n";
    key = "<leader>fE";
    action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
    options = {
      desc = "File browser";
    };
  }
  # telescope.nix
  # telescope.nix
  # telescope.nix

  # toggleterm.nix
  # toggleterm.nix
  # toggleterm.nix
  {
    mode = "n";
    key = "<leader>t";
    action = "<cmd>ToggleTerm<cr>";
    options = {
      desc = "Toggle Terminal Window";
    };
  }
  {
    mode = "n";
    key = "<leader>tv";
    action = "<cmd>ToggleTerm direction=vertical<cr>";
    options = {
      desc = "Toggle Vertical Terminal Window";
    };
  }
  {
    mode = "n";
    key = "<leader>th";
    action = "<cmd>ToggleTerm direction=horizontal<cr>";
    options = {
      desc = "Toggle Horizontal Terminal Window";
    };
  }
  {
    mode = "n";
    key = "<leader>tf";
    action = "<cmd>ToggleTerm direction=float<cr>";
    options = {
      desc = "Toggle Floating Terminal Window";
    };
  }
  # toggleterm.nix
  # toggleterm.nix
  # toggleterm.nix
]
