class Trelly < Formula
  desc "Fast Trello CLI with multi-profile auth, MCP server, and kanban TUI"
  homepage "https://github.com/brandonkramer/trelly"
  url "https://registry.npmjs.org/trelly/-/trelly-0.1.1.tgz"
  sha256 "c847f0a9cf54bf5f64d2e57993d3c090a4a459950cb28a07258dcab010f25f87"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/trelly/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/trelly --version")
  end
end
