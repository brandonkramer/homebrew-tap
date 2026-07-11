class Trelly < Formula
  desc "Fast Trello CLI with multi-profile auth, MCP server, and kanban TUI"
  homepage "https://github.com/brandonkramer/trelly"
  url "https://registry.npmjs.org/trelly/-/trelly-0.3.6.tgz"
  sha256 "db7ddd80c9056c586d47f802253127b3f3bde31263e9aeb390b82de71da82695"
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
