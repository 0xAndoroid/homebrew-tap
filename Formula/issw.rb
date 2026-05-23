class Issw < Formula
  desc "Tiny macOS CLI for switching keyboard input sources"
  homepage "https://github.com/0xAndoroid/issw"
  url "https://github.com/0xAndoroid/issw/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ea518d344e516a70f6e550562b60a9811a382234216f8e2c01defd1cf36deded"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "issw", shell_output("#{bin}/issw --help", 2)
  end
end
