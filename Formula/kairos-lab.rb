class KairosLab < Formula
  desc "Local workshop CLI for Kairos OS"
  homepage "https://github.com/kairos-io/kairos-lab"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.5/kairos-lab_0.1.5_darwin_arm64.tar.gz"
      sha256 "1abc47e50586f0d6456c30923a63f09044e69720a0000ffd1f13e0bd6ef90334"
    end

    # kairos-lab publishes no darwin amd64 binary, so Intel Macs build from
    # source. A platform with no `url` at all is not an option: Homebrew loads
    # every formula once per os/arch pair when it installs a tap, and one pass
    # that raises "formula requires at least a URL" rejects the whole tap.
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/archive/refs/tags/v0.1.5.tar.gz"
      sha256 "2e5c5fdaa672002c2db46d22a6930e6eef45b5c876aed7dc70f7d3be3aa46768"

      depends_on "go" => :build
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.5/kairos-lab_0.1.5_linux_amd64.tar.gz"
      sha256 "17a41e68ef91b1ba55dd35b58da3c1573bfec74c31c239903ae0b9564ecbe4d3"
    end

    on_arm do
      url "https://github.com/kairos-io/kairos-lab/releases/download/v0.1.5/kairos-lab_0.1.5_linux_arm64.tar.gz"
      sha256 "39af8555e9216e66ffa3cb69325b71261c2db3740f8afe882e0bf5aa5c95d6c7"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      ldflags = "-s -w -X main.version=#{version}"
      system "go", "build", *std_go_args(ldflags:), "./cmd/kairos-lab"
    else
      bin.install "kairos-lab"
    end
  end

  test do
    system "#{bin}/kairos-lab", "--help"
  end
end
