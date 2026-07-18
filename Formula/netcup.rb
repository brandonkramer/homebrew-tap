class Netcup < Formula
  desc "CLI and ops TUI for the netcup SCP REST API"
  homepage "https://github.com/brandonkramer/netcup-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.0/netcup_0.1.0_darwin_arm64.tar.gz"
      sha256 "25cad753d1deba86373a494b2e48e84f54fd9068a08afb82f718508779303cc0"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.0/netcup_0.1.0_darwin_amd64.tar.gz"
      sha256 "e8da8dbd6d5ac49db53d2a4387daec65cab415fb82ab63179ff32d893d3a88bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.0/netcup_0.1.0_linux_arm64.tar.gz"
      sha256 "35a6001f55137f8b143657365aa0cce49d3f422a28614b13678920dca2df5750"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.1.0/netcup_0.1.0_linux_amd64.tar.gz"
      sha256 "34a8fc4ce17471aba3cfe5ad447e634c7f461c66d52621cd433588b655b5108c"
    end
  end

  def install
    bin.install "netcup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netcup --version")
  end
end
