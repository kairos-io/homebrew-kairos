class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.1/kairos-lab_0.1.1_darwin_arm64.tar.gz"
      sha256 "f90f4c11281b90b8ca75a0338f1910a1880b635ec3fd0e171efc664f8d8d4ebb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.1/kairos-lab_0.1.1_linux_amd64.tar.gz"
      sha256 "f2c3a35148275abb4750f8f39d5c66a5d8747ffe1e6d666fd1d7c0d3e09c96d9"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.1/kairos-lab_0.1.1_linux_arm64.tar.gz"
      sha256 "356af66d94d9c6d507f8f791bd3a1263f9a4190d5e8546ead21fd61c4982f825"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
