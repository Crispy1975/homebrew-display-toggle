class DisplayToggle < Formula
  desc "Toggle any macOS display on or off by UUID"
  homepage "https://github.com/Crispy1975/display-toggle"
  url "https://github.com/Crispy1975/display-toggle/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "694896f582f3b851cbe2b5f5b4572984d0e55df1281ef6e37a88fceae4b075fc"
  license "GPL-3.0-only"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/display-toggle 2>&1", 1)
  end
end
