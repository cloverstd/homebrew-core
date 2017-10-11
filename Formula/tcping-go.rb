class TcpingGo < Formula
  desc "Ping over a tcp connection"
  homepage "https://github.com/cloverstd/tcping/releases"
  url "https://github.com/cloverstd/tcping/releases/download/v0.1.0/tcping-darwin-amd64-v0.1.0.tar.gz"
  sha256 "b2e5c9e2bc505fb2c7aeb3d37db5b2b6f228e201d93d3f37c4e2a424fe44fc47"

  def install
    bin.install "tcping"
  end

  test do
    system "#{bin}/tcping", "www.google.com", "80"
  end
end
