class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.5.0"
  url "https://github.com/k14s/kapp/releases/download/v0.5.0/kapp-darwin-amd64"
  sha256 "e160388b502bfb0694b93c276fe6fca4bcf312996f9ae001574097c8af89c753"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
