class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://github.com/k14s/imgpkg"
  version "v0.1.0"

  if OS.mac?
    url "https://github.com/k14s/imgpkg/releases/download/v0.1.0/imgpkg-darwin-amd64"
    sha256 "39f1925e39cec7f5837c06c8fce3499a4a24aace9612b8cb15d3835cef4222a0"
  elsif OS.linux?
    url "https://github.com/k14s/imgpkg/releases/download/v0.1.0/imgpkg-linux-amd64"
    sha256 "a9d0ba0edaa792d0aaab2af812fda85ca31eca81079505a8a5705e8ee1d8be93"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
