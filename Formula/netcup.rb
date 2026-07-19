class Netcup < Formula
  desc "CLI and ops TUI for the netcup SCP REST API"
  homepage "https://github.com/brandonkramer/netcup-cli"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.3/netcup_0.2.3_darwin_arm64.tar.gz"
      sha256 "84a3a02ef95821a2c5bfa73f992f00b7f44986a4490e114dbe721a36d15b2f41"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.3/netcup_0.2.3_darwin_amd64.tar.gz"
      sha256 "5d55b9cb55faf23d75d7fe2a16c15c92f4484081d77e870b293a0f73093bb27a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.3/netcup_0.2.3_linux_arm64.tar.gz"
      sha256 "8f8df60f724f98c185a366a75d2f5dbee2114541969f0c03da47e653ef504472"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.3/netcup_0.2.3_linux_amd64.tar.gz"
      sha256 "4014eea55cfc52e3a4defd13984dc78bf96be8a0edcb54f07eebdf72fd41da5b"
    end
  end

  def install
    bin.install "netcup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netcup --version")
  end
end
