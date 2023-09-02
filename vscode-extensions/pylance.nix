{
  pkgs,
  lib,
}:
pkgs.vscode-utils.buildVscodeMarketplaceExtension {
  mktplcRef = {
    name = "vscode-pylance";
    publisher = "MS-python";
    version = "2023.8.50";
    sha256 = "sha256-xJU/j5r/Idp/0VorEfciT4SFKRBpMCv9Z0LKO/++1Gk=";
  };

  buildInputs = [pkgs.nodePackages.pyright];

  meta = {
    changelog = "https://marketplace.visualstudio.com/items/ms-python.vscode-pylance/changelog";
    description = "A performant, feature-rich language server for Python in VS Code";
    downloadPage = "https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance";
    homepage = "https://github.com/microsoft/pylance-release";
    license = lib.licenses.unfree;
  };
}
