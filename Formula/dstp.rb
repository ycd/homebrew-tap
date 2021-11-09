require 'rbconfig'
class Dstp < Formula
  desc "Run common networking tests against your site"
  homepage "https://github.com/ycd/dstp"
  version "0.1.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.1.3/dstp_0.1.3_darwin_x86_64.tar.gz"
      sha256 "9bbd169362b6c06f23b732307089117fde270834714855472b44f6b71b664eda"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ycd/dstp/releases/download/v0.1.3/dstp_0.1.3_darwin_arm64.tar.gz"
      sha256 "6967a8595e711277342bffb9046ec0e092576610a7c0ee51913f185632931cdb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.1.3/dstp_0.1.3_linux_x86_64.tar.gz"
      sha256 "0c8745934205c319258e866c5922bb5d0231e60795644a4175f2d0bd3e5c0b2c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ycd/dstp/releases/download/v0.1.3/dstp_0.1.3_linux_arm64.tar.gz"
      sha256 "135d6e7369727d5eb5679f55756b27ad8e52c25c670d0d204c37c4486d49fc09"
    end
  end


  def install
    bin.install "dstp"
  end

  test do
    system "dstp"
  end

end
