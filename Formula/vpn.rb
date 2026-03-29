class Vpn < Formula
  desc "OpenConnect VPN connection manager with DNS healing and route cleanup"
  homepage "https://github.com/liangquanzhou/vpn"
  url "https://github.com/liangquanzhou/vpn/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "371c9b9bb4914660760dc8224ccbf3452345d53129783a429cce6fe90ff770ef"
  license "MIT"

  depends_on "openconnect"

  def install
    bin.install "bin/vpn"
    share.install "config.example.sh"
  end

  def caveats
    <<~EOS
      Create your config file before first use:
        mkdir -p ~/.config/vpn
        cp #{opt_share}/config.example.sh ~/.config/vpn/config.sh
        # Edit ~/.config/vpn/config.sh with your VPN details
    EOS
  end

  test do
    assert_match "用法", shell_output("#{bin}/vpn help 2>&1")
  end
end
