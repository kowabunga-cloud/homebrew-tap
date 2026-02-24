class Kobra < Formula
  desc "DevOps deployment swiss-army knife utility"
  homepage "https://github.com/kowabunga-cloud/kobra/"
  version "0.3.1"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.1/kobra_0.3.1_darwin_amd64.tar.gz"
      sha256 "b05e5b20aeeb9a4c6890527ef02f81805e4fd95061b34f642d8bbcb9caf64557"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.1/kobra_0.3.1_darwin_arm64.tar.gz"
      sha256 "6f4017563b82737f940cb9009e8f3785cd230846a4b1373fda2a4dc572cdaf62"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.1/kobra_0.3.1_linux_amd64.tar.gz"
      sha256 "d8af03660c10fba4888ad6b39769f771f07986c0b8283aa61d6b06a96e6fda7b"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kowabunga-cloud/kobra/releases/download/0.3.1/kobra_0.3.1_linux_arm64.tar.gz"
      sha256 "aeb4863e02d31e607bf08cb8107f73f7d6d9ced22c9f307fe6efa8b01da4d76b"
    end
  end

  def install
    bin.install "kobra"
  end
end

