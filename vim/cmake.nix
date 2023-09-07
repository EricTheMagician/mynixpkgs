{pkgs}:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "vim-cmake";
  src = pkgs.fetchFromGitHub {
    owner = "cdelledonne";
    repo = "vim-cmake";
    rev = "v0.12.1";
    hash = "sha256-jhwIAfSonIdKhFFZypCUfAI0S+nQvPbHF6/sXyXAuAM=";
  };
}
