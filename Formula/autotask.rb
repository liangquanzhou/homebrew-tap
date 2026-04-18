# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://github.com/liangquanzhou/autotask/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "bcdd3d0b06b2b6c85e7717d00144febb40fde6723f7287306f9be3fdcf8a8c12"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"autotask", "."
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/autotask version")
  end
end
