class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.0.10"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.10/kobra_0.0.10_darwin_amd64.tar.gz"
      sha256 "22c7cc8f1c0744c11072c3161dd4e8f485296cbcccbbb676189951e568d28252"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.10/kobra_0.0.10_darwin_arm64.tar.gz"
      sha256 "d497d6486252235ac6cad2d7c58e54a1167c6068aceb97519711ba56fdbd57ca"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.10/kobra_0.0.10_linux_amd64.tar.gz"
      sha256 "93bc942248bd8229aa7bcc5cea6ce017a676a95d1352214e24d3a8416ca3423f"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.10/kobra_0.0.10_linux_arm64.tar.gz"
      sha256 "967cfe4f574b52afb07fa308e013f11d3c7b64500c2c37bf15a828c5b9cc3dbf"
    end
  end

  def install
    bin.install "kobra"
  end
end

