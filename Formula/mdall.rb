class Mdall < Formula
  desc "Terminal Markdown renderer with Mermaid diagrams and LaTeX formulas"
  homepage "https://github.com/liangquanzhou/mdall"
  url "https://github.com/liangquanzhou/mdall/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "062f6f5bc63cec33ec3109ee1f53597641da334a4e41430502e295cc98712378"
  license "MIT"

  def install
    bin.install "bin/mdall"
    bin.install "bin/md-preview"
  end

  test do
    assert_match "用法", shell_output("#{bin}/mdall --help")
  end
end
