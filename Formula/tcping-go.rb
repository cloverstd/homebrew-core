# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class TcpingGo < Formula
  desc "ping over a tcp connection"
  homepage "https://github.com/cloverstd/tcping/releases"
  version "0.1.0"
  url "https://github.com/cloverstd/tcping/releases/download/v0.1.0/tcping-darwin-amd64-v0.1.0.tar.gz"
  sha256 "b2e5c9e2bc505fb2c7aeb3d37db5b2b6f228e201d93d3f37c4e2a424fe44fc47"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    bin.install "tcping"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test tcping-go`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/tcping", "www.google.com", "80"
  end
end
