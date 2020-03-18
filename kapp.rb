class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.22.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.22.0/kapp-darwin-amd64"
    sha256 "ea96e31135a125514f92f28576f4dcbf51e6fac4089f32eac7b352a35fad8e0d"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.22.0/kapp-linux-amd64"
    sha256 "620fe978c40260f1742134648f50c637f86c27c9097dc4b1cd4126989c49602b"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
