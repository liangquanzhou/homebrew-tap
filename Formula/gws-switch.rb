class GwsSwitch < Formula
  desc "Multi-account wrapper for googleworkspace-cli"
  homepage "https://github.com/liangquanzhou/gws-switch"
  url "https://github.com/liangquanzhou/gws-switch/releases/download/v0.1.2/gws-switch-0.1.2.tar.gz"
  sha256 "b763d216b12ab8e18fa48b683565b62262bbc0e5d619ec7a6cdcd79fc7055b71"
  version "0.1.2"
  head "https://github.com/liangquanzhou/gws-switch.git", branch: "main"

  def install
    libexec.install "bin", "src", "scripts", "README.md", "config.example.json", "VERSION"

    %w[
      gws-switch
      gws-switch-use
      gws-switch-gmail
      gws-switch-didi
      gws-switch-who
      gws-switch-accounts
      gws-switch-do
      gws-switch-login
      gws-switch-status
      gws-switch-doctor
      gws-switch-config-init
    ].each do |name|
      (bin/name).write_env_script libexec/"bin/#{name}", {}
    end
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/gws-switch --help")
    assert_match "gws-switch 0.1.2", shell_output("#{bin}/gws-switch --version")
  end
end
