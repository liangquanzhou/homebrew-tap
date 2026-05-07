class Mdall < Formula
  desc "Terminal Markdown renderer with Mermaid diagrams and LaTeX formulas"
  homepage "https://github.com/liangquanzhou/mdall"
  url "https://github.com/liangquanzhou/mdall/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "07dbce10c9a19c1a27a65335735063c1dc4e505e3b8ce62eafc14d45de331e4b"
  license "MIT"

  def install
    bin.install "bin/mdall"
    bin.install "bin/md-preview"
  end

  test do
    assert_match "用法", shell_output("#{bin}/mdall --help")
  end
end
