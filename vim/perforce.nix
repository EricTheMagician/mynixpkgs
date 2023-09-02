{pkgs}:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "vim-perforce";
  src = pkgs.fetchFromGitHub {
    owner = "nfvs";
    repo = "vim-perforce";
    rev = "d1dcbe8aca797976678200f42cc2994b7f6c86c2";
    hash = "sha256-CbRZXZdGeQOSM2FH8eDWXLhsznSRtx9B8txH5Ilk+Ag=";
  };
}
