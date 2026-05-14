class Dotbin < Formula
  desc "A collection of small macOS shell utilities"
  homepage "https://github.com/liangquanzhou/dotbin"
  url "https://github.com/liangquanzhou/dotbin/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "636291b7689ef9fec5d2544b454987d9090db4279e6b442e6ccd106529835fe1"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_match "Usage", shell_output("#{bin}/maccopy 2>&1", 1)
  end
end
