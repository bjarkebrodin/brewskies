class Meow < Formula
  desc "A submission/utility client for the kattis online judging system"
  homepage "https://github.com/bjarkebrodin/meow"
  url "https://github.com/bjarkebrodin/meow/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  def install
    system "mkdir", "#{prefix}/bin/"
    system "install", "-m", "+rx", "./meow", "./main.py", "./config_kattis.py", "./config_meow.py", "./header.py", "./kattis_client.py", "./new.py", "./submit.py", "./nix_utils.py", "./config_meow_default.py", "#{prefix}/bin/"
  end

  test do
    assert_match "test", shell_output("#{bin}/meow test")
  end
end
