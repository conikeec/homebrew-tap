class McpProbe < Formula
  desc "Interactive CLI debugger and TUI for MCP (Model Context Protocol) servers"
  homepage "https://github.com/conikeec/mcp-probe"
  version "0.2.5"
  
  if Hardware::CPU.intel?
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.5/mcp-probe-x86_64-apple-darwin.tar.gz"
    sha256 "0d1c1425a601a462cef9baf18a75de64fb3a88e533173c4b7930ac8859617fe4"
  else
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.5/mcp-probe-aarch64-apple-darwin.tar.gz"
    # Note: SHA256 for ARM64 would need to be calculated separately
  end
  
  def install
    bin.install "mcp-probe"
  end
  
  test do
    system "#{bin}/mcp-probe", "--version"
  end
end
