class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.2/kairos-lab_0.1.2_darwin_arm64.tar.gz"
      sha256 "f4d22e2724669843d66910ca16888de8db06de78accdf53cd12459af0727fcb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.2/kairos-lab_0.1.2_linux_amd64.tar.gz"
      sha256 "b3ab1a563909845d9f9b20d4b37932e655905d0badcaace025be28c686a9168a"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.2/kairos-lab_0.1.2_linux_arm64.tar.gz"
      sha256 "a7ebbfdd3fe6c4b7a8f2556dc1d30f6569ec99664b99fcb9345449ef50d1c139"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
