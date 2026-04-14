class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.5.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.0/kobra_0.5.0_darwin_amd64.tar.gz"
      sha256 "890e46a761bd6cd0e5730de8d8a8eb723ae38ff1fe69e2e87eeca15a491c9576"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.0/kobra_0.5.0_darwin_arm64.tar.gz"
      sha256 "038cc7001251964e1824667d483695be8475357c050579eb819bb3413a343299"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.0/kobra_0.5.0_linux_amd64.tar.gz"
      sha256 "05624a4e55b49bd59d961c2edbd46f3161784f3053e417c9e74ef4228fa9849f"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.0/kobra_0.5.0_linux_arm64.tar.gz"
      sha256 "f23ce084bd6e82a1fd1f753f8179a6e91285600c07438292410e913c6ce3af84"
    end
  end

  def install
    bin.install "kobra"
  end
end

