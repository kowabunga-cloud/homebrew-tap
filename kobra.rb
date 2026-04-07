class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.4.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.4.2/kobra_0.4.2_darwin_amd64.tar.gz"
      sha256 "69e1dda8a949798ab963586c4f5c8dde471b7d0044e97465ff9dbc83a4b82dcc"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.4.2/kobra_0.4.2_darwin_arm64.tar.gz"
      sha256 "f571a47756265b2bcf1d779ac8d005c78561e2bf3de3821fb4fa307d64b69a6d"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.4.2/kobra_0.4.2_linux_amd64.tar.gz"
      sha256 "c047cfb6e5467632b9214a4e4f333c9ab83247a281372bcb3116707ed14523bf"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.4.2/kobra_0.4.2_linux_arm64.tar.gz"
      sha256 "a5d44cfbe86d59c404cd424b1089577a8fec8a05371904b9ceb183bddccc560e"
    end
  end

  def install
    bin.install "kobra"
  end
end

