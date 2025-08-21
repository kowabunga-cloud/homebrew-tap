class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.0.11"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.11/kobra_0.0.11_darwin_amd64.tar.gz"
      sha256 "7ffa6eae3e334ff04b630dd99c422f2f1beb7b11993145a88d032c6036349a80"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.11/kobra_0.0.11_darwin_arm64.tar.gz"
      sha256 "5fdd1e045b972625db5a977f33fc049ced084de1b169f935d04319d9a478ba8b"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.11/kobra_0.0.11_linux_amd64.tar.gz"
      sha256 "224bbad17feceb5194f69ebf00135c90738e6fd457471c6dedfd341f6569459e"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.11/kobra_0.0.11_linux_arm64.tar.gz"
      sha256 "23d2cd2dd54c99cf3e14f29afb0aae2850a0adf7886e915b13331e08c359b498"
    end
  end

  def install
    bin.install "kobra"
  end
end

