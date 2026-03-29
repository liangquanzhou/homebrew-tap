class Vpn < Formula
  desc "OpenConnect VPN connection manager with DNS healing and route cleanup"
  homepage "https://github.com/liangquanzhou/vpn"
  url "https://github.com/liangquanzhou/vpn/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "f96c281b10807192dfc4cc37021928434bc83dbe1fb77d94dff4f2cef4b82813"
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
