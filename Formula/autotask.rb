# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://codeload.github.com/liangquanzhou/autotask/tar.gz/refs/tags/v0.1.6"
  sha256 "015ddf1a9c8d3d3ff153b8916cd87472722cf284dffda8d526a22b0d8fdc089c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-o", bin/"autotask", "."
    system "make", "-C", "ui", "build"
    prefix.install "ui/build/AutotaskMenu.app"
    (bin/"autotask-menu").write <<~EOS
      #!/bin/bash
      open "#{prefix}/AutotaskMenu.app"
    EOS
  end

  test do
    assert_match "0.1.6", shell_output("#{bin}/autotask version")
    assert_path_exists prefix/"AutotaskMenu.app/Contents/MacOS/AutotaskMenu"
    assert_path_exists bin/"autotask-menu"
  end
end
