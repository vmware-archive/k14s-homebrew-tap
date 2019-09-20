class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.13.0"
  url "https://github.com/k14s/kapp/releases/download/v0.13.0/kapp-darwin-amd64"
  sha256 "92edcf9de16ce17b95bcb85b83ed36cc11290efc02252d1029da7ce949aef730"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
