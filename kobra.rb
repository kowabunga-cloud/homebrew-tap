class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.0.9"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.9/kobra_0.0.9_darwin_amd64.tar.gz"
      sha256 "8635f869c6d0ea6c68167f226205d185980119058aa7d34e64c9f7b28f0b05ac"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.9/kobra_0.0.9_darwin_arm64.tar.gz"
      sha256 "37641e592268a415bebc832cb4ff4aae85ec097ec7affa113756dd1f66f9238f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.9/kobra_0.0.9_linux_amd64.tar.gz"
      sha256 "4b4b76e024e52bad2a521d2a9c9dfdc4175d7c39d9f05d3e7fcc996397612ea8"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.9/kobra_0.0.9_linux_arm64.tar.gz"
      sha256 "8ca130ebdfa345d6aa96d5920f0b4db48382f4dd0c4e1fb2d8adbd5690f98b1b"
    end
  end

  def install
    bin.install "kobra"
  end
end

