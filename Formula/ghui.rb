class Ghui < Formula
  desc "Terminal UI for GitHub pull requests"
  homepage "https://github.com/masakirocorp/ghui"
  version "0.10.0-masakiro.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-arm64.tar.gz"
      sha256 "7dc7c7e7f0155e171b4969cdfdb72115f332fc31a58fd21d7e956be14ce80e5f"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-darwin-x64.tar.gz"
      sha256 "60fe591214cd97a9b8a021c3cd88c5228b01a16420ffd1b26b23b80bf8c5613e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-arm64.tar.gz"
      sha256 "7fb4d227a2041a9b3e616c442193a44394a16257c4fb80e8757442e45867b1f3"
    end

    on_intel do
      url "https://github.com/masakirocorp/ghui/releases/download/v#{version}/ghui-linux-x64.tar.gz"
      sha256 "15c627a1e6eb9a3f24513a5c76b38e3d9b533ad2190fcf3f4ca1eba0961d07db"
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
