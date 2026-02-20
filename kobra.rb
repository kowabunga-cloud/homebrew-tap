class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.3.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.0/kobra_0.3.0_darwin_amd64.tar.gz"
      sha256 "5699d36116a9f77cffc1afda450e98f67ea34d85ab86960e7ebbf74c8098e368"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.0/kobra_0.3.0_darwin_arm64.tar.gz"
      sha256 "fd2e81bb3ac829dd02c2f748aebd677a835cef48a8d21b0eb235fe1c20056e11"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.0/kobra_0.3.0_linux_amd64.tar.gz"
      sha256 "e7a85f0cb49366e98fd3db6e47fa49d819ab349fc80a8963ba3414ea7010dca3"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.0/kobra_0.3.0_linux_arm64.tar.gz"
      sha256 "9cde5c6d9fb77e7a54a93a358377d73b1e23c93b44b1de680f04aa18d16faecc"
    end
  end

  def install
    bin.install "kobra"
  end
end

