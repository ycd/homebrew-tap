require 'rbconfig'
class Dstp < Formula
  desc "Run common networking tests against your site"
  homepage "https://github.com/ycd/dstp"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.4.0/dstp_0.4.0_darwin_x86_64.tar.gz"
      sha256 "dc4101eeae468d36982185833b8dd7af0a56ae7f33ee553b96c999773fbc5030"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ycd/dstp/releases/download/v0.4.0/dstp_0.4.0_darwin_arm64.tar.gz"
      sha256 "2472bfe1dbf0a0dc3a642a14a6c77e121317b4cc7126927bc1fcc2293542c9f9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.4.0/dstp_0.4.0_linux_x86_64.tar.gz"
      sha256 "492caee303e62f5e012e84aa1d925570dfd37780054a68baaadae7779791303a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ycd/dstp/releases/download/v0.4.0/dstp_0.4.0_linux_arm64.tar.gz"
      sha256 "ade3aeae239ffdcd617a68458e616cd3b64bfaadd846853f91e8b51858555b8e"
    end
  end


  def install
    bin.install "dstp"
  end

  test do
    system "dstp"
  end

end
