# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://github.com/liangquanzhou/autotask/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "02ea366497a551ca62f715d2e9a0acf19389732b0e91a2685f67092ec6d7df07"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"autotask", "."
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/autotask version")
  end
end
