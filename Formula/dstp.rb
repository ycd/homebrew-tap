require 'rbconfig'
class Dstp < Formula
  desc "Run common networking tests against your site"
  homepage "https://github.com/ycd/dstp"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.3.1/dstp_0.3.1_darwin_x86_64.tar.gz"
      sha256 "8e4c9af28f8446e50893506f16e44b4c0c38f96802dd4771103ad872cac151aa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ycd/dstp/releases/download/v0.3.1/dstp_0.3.1_darwin_arm64.tar.gz"
      sha256 "6ca674a896ab129db2bdb82f9095d2856a9d2b5933f4e6a6cc83ef141c55292e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.3.1/dstp_0.3.1_linux_x86_64.tar.gz"
      sha256 "f6bcb3705cfb91b20e715255de086227367533052b7f2f0913ca3a5b3f8770ef"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ycd/dstp/releases/download/v0.3.1/dstp_0.3.1_linux_arm64.tar.gz"
      sha256 "3ae41c27025520c53e9e99ed2d6aca8852906987754ec4b0193822cf6ab077d5"
    end
  end


  def install
    bin.install "dstp"
  end

  test do
    system "dstp"
  end

end
