# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://github.com/liangquanzhou/autotask/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "67a85d12c67506de04072e67955d68282d1310d7d665cdd8a1cd4d13d91b5d09"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"autotask", "."
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/autotask version")
  end
end
