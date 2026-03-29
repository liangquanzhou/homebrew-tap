class Transcribe < Formula
  desc "Audio transcription + AI summarization (WhisperKit/OpenAI)"
  homepage "https://github.com/liangquanzhou/transcribe"
  url "https://github.com/liangquanzhou/transcribe/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "865759056b9bba48f5055254688be9c6b76636ae5b2e3a07929761c6adc81a76"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/transcribe"
    bin.install "bin/transcribe-service"
  end

  test do
    assert_match "用法", shell_output("#{bin}/transcribe --help")
  end
end
