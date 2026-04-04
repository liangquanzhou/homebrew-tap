class GwsSwitch < Formula
  desc "Multi-account wrapper for googleworkspace-cli"
  homepage "https://github.com/liangquanzhou/gws-switch"
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
    assert_match "doctor: gws-switch", shell_output("#{bin}/gws-switch-doctor 2>&1")
  end
end
