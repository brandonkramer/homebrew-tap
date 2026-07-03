class Trelly < Formula
  desc "Fast Trello CLI with multi-profile auth, MCP server, and kanban TUI"
  homepage "https://github.com/brandonkramer/trelly"
  url "https://registry.npmjs.org/trelly/-/trelly-0.1.0.tgz"
  sha256 "2af37fc3cd1da79b49eba58b77c02553711aa5d10abc71779574a7dd15475aed"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/trelly --version")
  end
end
