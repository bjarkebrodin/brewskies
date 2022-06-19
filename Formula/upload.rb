class Upload < Formula
  desc "a small simple scp based file upload utility"
  homepage "https://github.com/bjarkebrodin/upload"
  url "https://github.com/bjarkebrodin/upload/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "39e215c8b64daeabf325945ff510293ed7f7b3c2d5d6c0b5cc0c6f14c5ab45b2"
  license "MIT"

  depends_on "scp"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_match "test", shell_output("#{bin}/upload test")
  end
end
