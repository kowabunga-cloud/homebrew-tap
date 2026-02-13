class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.2.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.1/kobra_0.2.1_darwin_amd64.tar.gz"
      sha256 "d597f369afd2dfc2fd49ed8e64297d958a96127de78803cf3b6e7d7aa5c9a829"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.1/kobra_0.2.1_darwin_arm64.tar.gz"
      sha256 "41e1cddb4ffd22c4d70a9f2bf4b99feb314dafba01968d6c1fc356b79cbfdfd3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.1/kobra_0.2.1_linux_amd64.tar.gz"
      sha256 "771abb1ac970145904be041533aae5c11b5f4ba984d133fb48424ee61e3d98da"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.2.1/kobra_0.2.1_linux_arm64.tar.gz"
      sha256 "dd07126b89723232ab37ea85e1d4bf23dd4e7d7460ac5b9f3abf0f2e719ead61"
    end
  end

  def install
    bin.install "kobra"
  end
end

