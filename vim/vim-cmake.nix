{pkgs}:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "vim-cmake";
  src = pkgs.fetchFromGitHub {
    owner = "cdelledonne";
    repo = "vim-cmake";
    rev = "0.12.1";
    hash = "";
  };
}
