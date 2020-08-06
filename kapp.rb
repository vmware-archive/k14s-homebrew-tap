class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.33.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.33.0/kapp-darwin-amd64"
    sha256 "04883a0b40f0a52843288ae5316e3fd4053dcdcd3a566b4daaa3f4b0f64e4807"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.33.0/kapp-linux-amd64"
    sha256 "2a3328c9eca9f43fe639afb524501d9d119feeea52c8a913639cfb96e38e93d1"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
