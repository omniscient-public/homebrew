class Hcs < Formula
  desc "Your awesome CLI tool"
  homepage "https://github.com/omniscient-public/hcs-binaries"
  version "v0.2.25"
  license "MIT"
        
  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.25/hcs-darwin-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.25/hcs-darwin-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end
        
  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.25/hcs-linux-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.25/hcs-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end
        
  def install
    bin.install "hcs"
  end
        
  test do
    system "#{bin}/hcs", "--version"
  end
end
