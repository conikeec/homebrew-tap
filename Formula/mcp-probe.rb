class McpProbe < Formula
  desc "Interactive CLI debugger and TUI for MCP (Model Context Protocol) servers"
  homepage "https://github.com/conikeec/mcp-probe"
  version "0.2.3"
  
  if Hardware::CPU.intel?
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.3/mcp-probe-x86_64-apple-darwin.tar.gz"
    sha256 "25a0ee3b7324d7ffc3e393f2f7d48a41ff50465e36e8d65cb9b6c29ca8a258cf"
  else
    url "https://github.com/conikeec/mcp-probe/releases/download/v0.2.3/mcp-probe-aarch64-apple-darwin.tar.gz"
    # Note: SHA256 for ARM64 would need to be calculated separately
  end
  
  def install
    bin.install "mcp-probe"
  end
  
  test do
    system "#{bin}/mcp-probe", "--version"
  end
end
