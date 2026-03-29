class Dotbin < Formula
  desc "A collection of small macOS shell utilities"
  homepage "https://github.com/liangquanzhou/dotbin"
  url "https://github.com/liangquanzhou/dotbin/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "305bdbb8906e4cbef89438b9dff81882af589bcc0337ebcf51850bf92f1dc254"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_match "Usage", shell_output("#{bin}/maccopy 2>&1", 1)
  end
end
