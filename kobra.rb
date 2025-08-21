class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.1.0/kobra_0.1.0_darwin_amd64.tar.gz"
      sha256 "838cb9099b061323c4a6b99292def66ff1dfb2731e22cb92548dc5b65c419e18"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.1.0/kobra_0.1.0_darwin_arm64.tar.gz"
      sha256 "ed0d31a360fe5007bf8455cd90d877cb53bc3e886f6a9fb9c80d6d3a4ed76b26"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.1.0/kobra_0.1.0_linux_amd64.tar.gz"
      sha256 "e3bf55b814fb80eff69ddb2d2ed60ca3bc0b1908dbd74395fa278c7a994e505b"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.1.0/kobra_0.1.0_linux_arm64.tar.gz"
      sha256 "5997c8bdf2bb9d783e7c81a9dd0d36ce53f1dfb5414656f7140fcbfac406e6f6"
    end
  end

  def install
    bin.install "kobra"
  end
end

