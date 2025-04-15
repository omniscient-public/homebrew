cat > $FORMULA_PATH <<EOF
class Hcs < Formula
  desc "Your awesome CLI tool"
  homepage "https://github.com/$BIN_REPO"
  version "${{ env.VERSION }}"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/$BIN_REPO/releases/download/${{ env.VERSION }}/${{ env.TOOL_NAME }}-darwin-amd64.tar.gz"
      sha256 "${{ steps.sha.outputs.darwin_amd64_sha }}"
    end

    on_arm do
      url "https://github.com/$BIN_REPO/releases/download/${{ env.VERSION }}/${{ env.TOOL_NAME }}-darwin-arm64.tar.gz"
      sha256 "${{ steps.sha.outputs.darwin_arm64_sha }}"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/$BIN_REPO/releases/download/${{ env.VERSION }}/${{ env.TOOL_NAME }}-linux-amd64.tar.gz"
      sha256 "${{ steps.sha.outputs.linux_amd64_sha }}"
    end

    on_arm do
      url "https://github.com/$BIN_REPO/releases/download/${{ env.VERSION }}/${{ env.TOOL_NAME }}-linux-arm64.tar.gz"
      sha256 "${{ steps.sha.outputs.linux_arm64_sha }}"
    end
  end

  def install
    bin.install "${{ env.TOOL_NAME }}"
  end

  test do
    system "#{bin}/${{ env.TOOL_NAME }}", "--version"
  end
end
EOF

