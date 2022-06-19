class Upload < Formula
  desc "a small simple scp based file upload utility"
  homepage "https://github.com/bjarkebrodin/upload"
  url "https://github.com/bjarkebrodin/upload/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "942b98b26bd5082cc2c5561c1e97fe9546fcb66206b72ae6cef755123ef20fcb"
  license "MIT"

  def install
    system "install", "-m", "+x", "upload", "#{prefix}/bin/"
  end

  test do
    assert_match "test", shell_output("#{bin}/upload test")
  end
end
