# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://codeload.github.com/liangquanzhou/autotask/tar.gz/refs/tags/v0.1.5"
  sha256 "c7102288d6eeeea9bedd7b742e21dcba8e7424e184d3eb1f5da84f96003631d9"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"autotask", "."
  end

  test do
    assert_match "0.1.5", shell_output("#{bin}/autotask version")
  end
end
