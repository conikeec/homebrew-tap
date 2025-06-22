class McpProbe < Formula
  desc "Interactive CLI debugger and TUI for MCP (Model Context Protocol) servers"
  homepage "https://github.com/conikeec/mcp-probe"
  version "0.2.0"
  
  if Hardware::CPU.intel?
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.0/mcp-probe-x86_64-apple-darwin.tar.gz"
    sha256 "10b2f4bae38cdb769db3a3d7af470eee734e236dc2ea23d06ad45a8f54e96b97"
  else
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.0/mcp-probe-aarch64-apple-darwin.tar.gz"
    # Note: SHA256 for ARM64 would need to be calculated separately
  end
  
  def install
    bin.install "mcp-probe"
  end
  
  test do
    system "#{bin}/mcp-probe", "--version"
  end
end
