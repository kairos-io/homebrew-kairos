class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.9/kairos-lab_0.1.0-rc.9_darwin_arm64.tar.gz"
      sha256 "6de9a181d2034292690d2035b55f01e1e2f06ca8c185cc75c9b40c95144ae2f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.9/kairos-lab_0.1.0-rc.9_linux_amd64.tar.gz"
      sha256 "dfb84c2d75d06380987980d29cf7326b14c1c6ee2aeb5fd55e5c117b842b23e3"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0-rc.9/kairos-lab_0.1.0-rc.9_linux_arm64.tar.gz"
      sha256 "01c6d3df69ca738554c46252b93814467786ade3ea1a6613850a31f8308aade9"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
