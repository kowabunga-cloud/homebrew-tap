class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.3.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.2/kobra_0.3.2_darwin_amd64.tar.gz"
      sha256 "036303873ba59e5469430232a80d1cd2fcf8736ddd1e3d24de11c56e7f483e95"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.2/kobra_0.3.2_darwin_arm64.tar.gz"
      sha256 "83f5067ac706ebe4728965cb6b166b87a1f471229cc8af3e907f61769e18be33"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.2/kobra_0.3.2_linux_amd64.tar.gz"
      sha256 "fae136688be348a5047b48420373f03a309d3b6375a449f274042605c1c2a6be"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.2/kobra_0.3.2_linux_arm64.tar.gz"
      sha256 "21faaf720e89ff1b37bc5d0c8d73838b7b1df21803b1f86456be23b30a8a39d1"
    end
  end

  def install
    bin.install "kobra"
  end
end

