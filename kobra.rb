class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.5.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.2/kobra_0.5.2_darwin_amd64.tar.gz"
      sha256 "a04d6008228d6ff1db074d6e962a2c76031b2eaf11ea1e2ad2dcabc57217b8a1"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.2/kobra_0.5.2_darwin_arm64.tar.gz"
      sha256 "d4ee2b832624106c2ba955726ca9334c3054b8793d8324d19e2076628d7c42e6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.2/kobra_0.5.2_linux_amd64.tar.gz"
      sha256 "84b7397ecd2429b9229a87d29235266c261754a7c769d47471c532ab07854ce8"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/v0.5.2/kobra_0.5.2_linux_arm64.tar.gz"
      sha256 "521ceb12ce725ca33fbcc07934309ae50d8898fcbd85a9d101628c48b14aba77"
    end
  end

  def install
    bin.install "kobra"
  end
end

