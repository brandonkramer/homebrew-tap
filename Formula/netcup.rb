class Netcup < Formula
  desc "CLI and ops TUI for the netcup SCP REST API"
  homepage "https://github.com/brandonkramer/netcup-cli"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.1/netcup_0.2.1_darwin_arm64.tar.gz"
      sha256 "df7d5809cd6633aeae30936244a24a7dbcca2ee3599c0b683ad70c487ee3c24e"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.1/netcup_0.2.1_darwin_amd64.tar.gz"
      sha256 "ec8185224538a3564e5f30e6bab17267ecc934c8d165b04855be4e284b04d813"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.1/netcup_0.2.1_linux_arm64.tar.gz"
      sha256 "538826ac7417e9e664c536c76266cea2b56b35101f9e5031c1f5b949000c5777"
    end
    on_intel do
      url "https://github.com/brandonkramer/netcup-cli/releases/download/v0.2.1/netcup_0.2.1_linux_amd64.tar.gz"
      sha256 "a0f029d534c2b42eb337aba98dcbdfaec70b663c9866680bfb16ac8d28281d95"
    end
  end

  def install
    bin.install "netcup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/netcup --version")
  end
end
