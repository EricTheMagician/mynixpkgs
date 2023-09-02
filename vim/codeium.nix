{pkgs}:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "codeium.vim";
  src = pkgs.fetchFromGitHub {
    owner = "Exafunction";
    repo = "codeium.vim";
    rev = "1.2.78";
    hash = "sha256-SO0H0cXg0Pcmx4tvzRhtSQBgCvV11EUtYZ9vh+ZASAA=";
  };
}
