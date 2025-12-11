class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.0/kobra_0.2.0_darwin_amd64.tar.gz"
      sha256 "a86f177bc54e940c5f706e576178a21792744a7b463c9d0bbf75f4de824084c4"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.0/kobra_0.2.0_darwin_arm64.tar.gz"
      sha256 "de4460436c40db3ed0abbaeefa161bea1d70bd5da9c136761ea9ba4ec7ceb84f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.0/kobra_0.2.0_linux_amd64.tar.gz"
      sha256 "b83d1789c810796098b1e43f9b45ea12169eb87d7bad56bdf54e18d0722bb0fe"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.0/kobra_0.2.0_linux_arm64.tar.gz"
      sha256 "085f664d78b688f7de01d8150349a29abae451d97ec852a323b9446068f1a3ab"
    end
  end

  def install
    bin.install "kobra"
  end
end

