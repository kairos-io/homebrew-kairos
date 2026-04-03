class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0/kairos-lab_0.1.0_darwin_arm64.tar.gz"
      sha256 "059cd1f62c42b9de3759f5b3247ae01ae14d5dc4993fd031f9f68c9fdcf15c1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0/kairos-lab_0.1.0_linux_amd64.tar.gz"
      sha256 "3265877ecf34dff628977e887145d1654d6f4c7a39b315c5c8dd22efe5bd703f"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.0/kairos-lab_0.1.0_linux_arm64.tar.gz"
      sha256 "cc4a200b8f72a27bd0eeb4e17365dc0b6d8b4fe25fba61904c3e58d48620f970"
    end
  end

  def install
    bin.install "kairos-lab"
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
