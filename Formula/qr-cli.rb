class QrCli < Formula
  desc "Generate QR codes in your terminal"
  homepage "https://qr-cli.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/asharahmed/qr-cli/releases/download/v1.1.5/qr-macos-arm64"
      sha256 "3e46174462027db49f7dfe0a9aec20b830e27ae98d707dfd70a5b7d2f21ddc1c"
    end
    on_intel do
      url "https://github.com/asharahmed/qr-cli/releases/download/v1.1.5/qr-macos-x64"
      sha256 "7e0c6c0bac808e154258f7d536436d53ecbe2b7a09341df0c459b9bf73fbbc16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/asharahmed/qr-cli/releases/download/v1.1.5/qr-linux-arm64"
      sha256 "e467a7581df8bd939710b8943d6353371c15de8f8f3550b2b0d9a2f3b30a6855"
    end
    on_intel do
      url "https://github.com/asharahmed/qr-cli/releases/download/v1.1.5/qr-linux-x64"
      sha256 "fe707d0b255d1c54d7bf6ca0eda222c8fcf71a1c27f19cd048780320083a3f43"
    end
  end

  def install
    bin.install Dir["qr-*"].first => "qr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/qr --version")
    assert_match(/[█▀▄]/, shell_output("#{bin}/qr hello"))
  end
end
