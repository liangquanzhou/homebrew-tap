# typed: false
# frozen_string_literal: true

class Autotask < Formula
  desc "Personal macOS automation task registry and launchd manager"
  homepage "https://github.com/liangquanzhou/autotask"
  url "https://codeload.github.com/liangquanzhou/autotask/tar.gz/refs/tags/v0.1.7"
  sha256 "e3b714d062f3279bf65b3743783a09f4151dbf4b3703ad7e0548d3a7eacf75d5"
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
    assert_match "0.1.7", shell_output("#{bin}/autotask version")
    assert_path_exists prefix/"AutotaskMenu.app/Contents/MacOS/AutotaskMenu"
    assert_path_exists bin/"autotask-menu"
  end
end
