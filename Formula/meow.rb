class Meow < Formula
  desc "A submission/utility client for the kattis online judging system"
  homepage "https://github.com/bjarkebrodin/meow"
  url "https://github.com/bjarkebrodin/meow/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "5e6bce75655332b50027bb36f6f4b6ce53654c7c19346a670aabe675f2bd04e2"
  license "MIT"

  def install
    system "mkdir", "#{prefix}/bin/"
    system "install", "-m", "+rx", "./meow", "./main.py", "./config_kattis.py", "./config_meow.py", "./header.py", "./kattis_client.py", "./new.py", "./submit.py", "./nix_utils.py", "./config_meow_default.py", "#{prefix}/bin/"
  end

  test do
    assert_match "test", shell_output("#{bin}/meow test")
  end
end
