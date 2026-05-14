class Dotbin < Formula
  desc "A collection of small macOS shell utilities"
  homepage "https://github.com/liangquanzhou/dotbin"
  url "https://github.com/liangquanzhou/dotbin/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "851d278e1047e09c5097af37dd119bfa80020fa7986c0b1cbe44e40cf594da43"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_match "Usage", shell_output("#{bin}/maccopy 2>&1", 1)
  end
end
