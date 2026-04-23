{ pkgs, lib, ... }:
{
  vim = {

    opts = {
      shiftwidth = 4;
      tabstop = 4;
    };
    theme = {
      enable = true;
      name = "rose-pine";
      style = "moon";
    };

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
      };
    };

    languages = {
      nix.enable = true;
      ts.enable = true;
      go.enable = true;
      rust.enable = true;
    };

    formatter = {
      conform-nvim.enable = true;
    };

    visuals = {
      cinnamon-nvim.enable = true;
    };
  };
}
