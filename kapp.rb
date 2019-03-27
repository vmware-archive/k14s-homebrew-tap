class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.4.0"
  url "https://github.com/k14s/kapp/releases/download/v0.4.0/kapp-darwin-amd64"
  sha256 "7a61cf9523281d94711c752ebd8d890068602f3fe6baf344895fbc59b9d5664e"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
