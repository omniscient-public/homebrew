class Hcs < Formula
  desc "Your awesome CLI tool"
  homepage "https://github.com/omniscient-public/hcs-binaries"
  version "v0.2.3"
  license "MIT"
        
  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.3/hcs-darwin-amd64.tar.gz"
      sha256 "03f8df045ee06fe520f4c388a6e0a1c24ea6dba67bf868c307930a360d59797d"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.3/hcs-darwin-arm64.tar.gz"
      sha256 "102243e2382504e96adeab41bbfaa2200ae94d68d2bc44944389cff13a246f50"
    end
  end
        
  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.3/hcs-linux-amd64.tar.gz"
      sha256 "7213f923a9e572e40d202742b3dd17726c59196ceb684a6923bdccc7e2ecca7b"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.3/hcs-linux-arm64.tar.gz"
      sha256 "727394da244a198a1715cd412b0ccce9cf215d91fabd9f19d6b3b8ccf4f1af5a"
    end
  end
        
  def install
    bin.install "hcs"
  end
        
  test do
    system "#{bin}/hcs", "--version"
  end
end
