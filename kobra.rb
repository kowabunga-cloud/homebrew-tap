class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.5.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.1/kobra_0.5.1_darwin_amd64.tar.gz"
      sha256 "c3ce4195ca98665d83e589ea9b3dd91638de83a55d0612a223128117bec8b4d7"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.1/kobra_0.5.1_darwin_arm64.tar.gz"
      sha256 "ee7ee543d6b23413c9c18fa284ea9284a6bdc1a1f6fcbdc638175bc75571c5c7"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.1/kobra_0.5.1_linux_amd64.tar.gz"
      sha256 "a6b6d272f06af33967f635b2e391d79e4082d0c2b986a8f08613c1a50014d79d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.1/kobra_0.5.1_linux_arm64.tar.gz"
      sha256 "1d2f8ce4db9c4f46cd178efe9ad6b225df5b00dd477d774e2644b7ccddd069b9"
    end
  end

  def install
    bin.install "kobra"
  end
end

