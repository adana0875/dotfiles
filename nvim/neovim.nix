{ pkgs, lib, ... }:
{
  vim = {

    opts = {
      shiftwidth = 4;
      tabstop = 4;
    };
    # theme = {
    #   enable = true;
    #   name = "rose-pine";
    #   style = "moon";
    # };

    keymaps = [
      {
        key = "<leader>e";
        mode = [ "n" ];
        action = ":Neotree";
      }
    ];

    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp = {
      enable = true;
      mappings = {
        previous = "<Up>";
        next = "<Down>";
      };
    };

    # start dash
    dashboard = {
      alpha = {
        enable = true;
        theme = "startify";
      };
    };

    # Auto Close brackets
    autopairs.nvim-autopairs.enable = true;

    # Treesitter
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      autotagHtml = true;
    };

    # LSP options
    lsp = {
      enable = true;
      formatOnSave = true;

      mappings = {
        # this is to show errors
        openDiagnosticFloat = "le";

        goToDeclaration = "gD";
        goToDefinition = "gd";
        listReferences = "lr";
      };
    };

    #file explorer
    filetree = {
      neo-tree = {
        enable = true;
        setupOpts = {
          filesystem = {
            filtered_items = {
              visible = true;
              hide_gitignored = false;
            };
          };
        };
      };
    };

    languages = {
      nix.enable = true;
      ts.enable = true;
      go.enable = true;
      rust.enable = true;
      qml.enable = true;
      markdown = {
        enable = true;
        extensions = {
          markview-nvim = {
            enable = true;
            setupOpts = {
              markdown = {
                tables = {
                  enable = true;
                  strict = false;
                  block_decorator = true;
                  use_virt_lines = false;
                  parts = {
                    top = [
                      "╭"
                      "─"
                      "╮"
                      "┬"
                    ];
                    header = [
                      "│"
                      "│"
                      "│"
                    ];
                    separator = [
                      "├"
                      "─"
                      "┤"
                      "┼"
                    ];
                    row = [
                      "│"
                      "│"
                      "│"
                    ];
                    bottom = [
                      "╰"
                      "─"
                      "╯"
                      "┴"
                    ];
                    overlap = [
                      "┝"
                      "━"
                      "┥"
                      "┿"
                    ];
                    align_left = "╼";
                    align_right = "╾";
                    align_center = [
                      "╴"
                      "╶"
                    ];
                  };
                  hl = {
                    top = [
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                    ];
                    header = [
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                    ];
                    separator = [
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                      "MarkviewTableHeader"
                    ];
                    row = [
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                    ];
                    bottom = [
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                    ];
                    overlap = [
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                      "MarkviewTableBorder"
                    ];
                    align_left = "MarkviewTableAlignLeft";
                    align_right = "MarkviewTableAlignRight";
                    align_center = [
                      "MarkviewTableAlignCenter"
                      "MarkviewTableAlignCenter"
                    ];
                  };
                };
              };
            };
          };
        };
      };
    };

    formatter = {
      conform-nvim.enable = true;
    };

    visuals = {
      cinnamon-nvim.enable = true;
    };

    extraPlugins = {
      kanagawa = {
        package = pkgs.vimPlugins.kanagawa-nvim;
        setup = ''
          require('kanagawa').setup({
            theme = "dragon",  -- "wave" | "dragon" | "lotus"
            transparent = false,
            commentStyle = { italic = true },
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
          })
          vim.cmd("colorscheme kanagawa")
        '';
      };
    };
  };
}
