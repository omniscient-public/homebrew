class Hcs < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/hcs-binaries"
  version "v0.2.26"
  license "MIT"
        
  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.26/omni-cli-darwin-amd64.tar.gz"
      sha256 "f2079aca2d781339288cbfea4fdc85ada68af72df2f32077668f2a59ca5dc5e7"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.26/omni-cli-darwin-arm64.tar.gz"
      sha256 "8e145007a937162c24ebd9391f33f635b5901ef7e5aa5f4b3a39562eac434bf4"
    end
  end
        
  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.26/omni-cli-linux-amd64.tar.gz"
      sha256 "a24a645b064297f41b25ef3062266981a740a87287ac08e734469aab22ac29b2"
    end
        
    on_arm do
      url "https://github.com/omniscient-public/hcs-binaries/releases/download/v0.2.26/omni-cli-linux-arm64.tar.gz"
      sha256 "8167868bc3c3aa32b9e703c94960e3b8b57fe8fd963d34070b31ed72378998db"
    end
  end
        
  def install
    bin.install "omni-cli"
  end
        
  test do
    system "#{bin}/omni-cli", "--version"
  end
end
