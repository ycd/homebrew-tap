require 'rbconfig'
class Dstp < Formula
  desc "Run common networking tests against your site"
  homepage "https://github.com/ycd/dstp"
  version "0.1.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.1.2/dstp_0.1.2_darwin_x86_64.tar.gz"
      sha256 "9f58671f69efcd3d0e8b08e5f3d3996b725504c5d30f0b5d1f965e65c0e42e2c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ycd/dstp/releases/download/v0.1.2/dstp_0.1.2_darwin_arm64.tar.gz"
      sha256 "0250cb525666eea118b080c1b4433f87c3da1705d0b3382f520f4ede9bc3556b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.1.2/dstp_0.1.2_linux_x86_64.tar.gz"
      sha256 "7bbb6b0b11ac2eba17e78aaee14652df6df43ec1755bdfcf36a1c54c152b93a2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ycd/dstp/releases/download/v0.1.2/dstp_0.1.2_linux_arm64.tar.gz"
      sha256 "345ee4da6615d9e6d0a6c725e50e0ac6ec0ebf0f40149372b142bc41accb7de3"
    end
  end


  def install
    bin.install "dstp"
  end

  test do
    system "dstp"
  end

end
