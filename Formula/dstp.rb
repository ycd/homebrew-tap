require 'rbconfig'
class Dstp < Formula
  desc "Run common networking tests against your site"
  homepage "https://github.com/ycd/dstp"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.3.0/dstp_0.3.0_darwin_x86_64.tar.gz"
      sha256 "9f39fa6ef582280fbebcfe8d043895f8c916d1784c7ba8df6fd6c2b428a6b6eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ycd/dstp/releases/download/v0.3.0/dstp_0.3.0_darwin_arm64.tar.gz"
      sha256 "452b695dda9f06e11429aa6408f1abf3a9a74e1ee11aa49bc3bb280650e7ec12"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.3.0/dstp_0.3.0_linux_x86_64.tar.gz"
      sha256 "ed8bf4fc5267d4fa72fdb066a8c6862b7d60c98b2452a5408bb43edeabe5cfe0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ycd/dstp/releases/download/v0.3.0/dstp_0.3.0_linux_arm64.tar.gz"
      sha256 "7b7374172ffe218cb465104e687c187c3943c7c6fa5f533e9d3f11a102bdbf47"
    end
  end


  def install
    bin.install "dstp"
  end

  test do
    system "dstp"
  end

end
