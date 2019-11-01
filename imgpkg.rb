class Imgpkg < Formula
  desc "Imgpkg"
  homepage "https://github.com/k14s/imgpkg"
  version "v0.1.0"
  url "https://github.com/k14s/imgpkg/releases/download/v0.1.0/imgpkg-darwin-amd64"
  sha256 "39f1925e39cec7f5837c06c8fce3499a4a24aace9612b8cb15d3835cef4222a0"

  depends_on :arch => :x86_64

  def install
    bin.install "imgpkg-darwin-amd64" => "imgpkg"
  end

  test do
    system "#{bin}/imgpkg", "version"
  end
end
