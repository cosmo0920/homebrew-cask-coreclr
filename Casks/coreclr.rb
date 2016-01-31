cask "coreclr" do
  version :latest
  url "https://dotnetcli.blob.core.windows.net/dotnet/dev/Installers/Latest/dotnet-osx-x64.#{version}.pkg"
  name ".NET Core"
  sha256 :no_check
  homepage "https://dotnet.github.io/"
  license :mit
  pkg "dotnet-osx-x64.#{version}.pkg"

  depends_on macos: '>= :yosemite'

  uninstall pkgutil: 'com.microsoft.dotnet.cli.pkg.dotnet-osx-x64.*'
end
