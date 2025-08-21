class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.0.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.2/kobra_0.0.2_darwin_amd64.tar.gz"
      sha256 "283243ac3580a594836cf0bf29352dc04244174893a734bf90a8f480406765f8"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.2/kobra_0.0.2_darwin_arm64.tar.gz"
      sha256 "8fda6d4498059b1c890593d1e673ddb9c49739f0ca364e1a9e6dfcc6635e8898"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.2/kobra_0.0.2_linux_amd64.tar.gz"
      sha256 "a47da977ff88c948668848320d9a165f29cdabe4e61bbaa1ba652612e9f38e27"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.0.2/kobra_0.0.2_linux_arm64.tar.gz"
      sha256 "0f6748d4c62e34b7159b8346d6884ec1b5444cbae0002a3a34df76993e0861b3"
    end
  end

  def install
    bin.install "kobra"
  end
end
