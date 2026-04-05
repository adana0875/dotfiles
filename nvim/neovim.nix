{ pkgs, lib, ... }:
{
  vim = {

    opts = {
      shiftwidth = 4;
    };
    theme = {
      enable = true;
      name = "rose-pine";
      style = "moon";
    };

    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    dashboard = {
      alpha = {
        enable = true;
        theme = "startify";
      };
    };

    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      autotagHtml = true;
    };

    lsp = {
      enable = true;
      formatOnSave = true;

      mappings = {
        openDiagnosticFloat = "le";
        goToDeclaration = "gD";
        goToDefiniton = "gd";
        listReferences = "lr";
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
