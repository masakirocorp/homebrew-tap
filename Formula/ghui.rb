class Ghui < Formula
  desc "Terminal UI for GitHub pull requests"
  homepage "https://github.com/masakirocorp/ghui"
  version "0.10.0-masakiro.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-arm64.tar.gz"
      sha256 "8b78d851d006452115676f62ba58acb7ffc3e12861204256f3ac610e180a3e5a"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-x64.tar.gz"
      sha256 "e7ed0bb0727cb903d08ec5f9567f87a241577254b04cef5081eaaf0d0f605337"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-arm64.tar.gz"
      sha256 "5308ba197e7a0efbd8706f1baf3d2f177aa0bde22d3b4426dc242ddc9a7405bc"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-x64.tar.gz"
      sha256 "de28574857d3bc80a2eadc4527b8ceb3f7a0435a97954599fda7b234d58a7169"
    end
  end

  def install
    bin.install "ghui"
    prefix.install "LICENSE"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ghui --version").strip
  end
end
