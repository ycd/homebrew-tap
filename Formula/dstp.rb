require 'rbconfig'
class Dstp < Formula
  desc "Run common networking tests against your site"
  homepage "https://github.com/ycd/dstp"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.2.0/dstp_0.2.0_darwin_x86_64.tar.gz"
      sha256 "3081853f3c49f81f08547a85cf6d3d67f75600ca0f0ac809b90dc279d9f7a9cc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ycd/dstp/releases/download/v0.2.0/dstp_0.2.0_darwin_arm64.tar.gz"
      sha256 "36efd48779de413b7a1cfba8edfe478b38b965b3fba12adf9a63911abd43d505"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ycd/dstp/releases/download/v0.2.0/dstp_0.2.0_linux_x86_64.tar.gz"
      sha256 "832c1c975880afc6fe5b860b5dbcb4f69c11b51e40b5e6d4fb858fb92d19de05"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ycd/dstp/releases/download/v0.2.0/dstp_0.2.0_linux_arm64.tar.gz"
      sha256 "888c72aacb49a6a250d72a02c4eb6a9f5039aa7a4f5ada2224f221bc2b722fda"
    end
  end


  def install
    bin.install "dstp"
  end

  test do
    system "dstp"
  end

end
