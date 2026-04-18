# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://codeload.github.com/liangquanzhou/autotask/tar.gz/refs/tags/v0.1.4"
  sha256 "70df4e1fb05fc3e677854fe654fba2b17f34dc026cec3313715ed2fecadff0eb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"autotask", "."
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/autotask version")
  end
end
