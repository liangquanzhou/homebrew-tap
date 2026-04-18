# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://github.com/liangquanzhou/autotask/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fe6a2cf5a1e9b24ea39b8631e9bc19996e84f05c28f07a9090388dbebb0a591c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"autotask", "."
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/autotask version")
  end
end
