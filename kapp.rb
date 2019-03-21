class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.3.0"
  url "https://github.com/k14s/kapp/releases/download/v0.3.0/kapp-darwin-amd64"
  sha256 "80a01662fa54d654f3f3c45db9538cd0d5aff318b4f4d7da4e949849dc66602e"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
