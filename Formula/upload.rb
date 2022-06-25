class Upload < Formula
  desc "a small simple scp based file upload utility"
  homepage "https://github.com/bjarkebrodin/upload"
  url "https://github.com/bjarkebrodin/upload/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "20090f7eab562607e592cd3cfcd4512a125aa9180b9af3f066591202f967f7b9"
  license "MIT"

  def install
    system "mkdir", "-p", "#{prefix}/bin"
    system "install", "-m", "+rx", "main", "#{prefix}/bin/"
  end

  test do
    assert_match "test", shell_output("#{bin}/upload test")
  end
end
