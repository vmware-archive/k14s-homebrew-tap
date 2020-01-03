class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.17.0"
  url "https://github.com/k14s/kapp/releases/download/v0.17.0/kapp-darwin-amd64"
  sha256 "49dbf96dbed4c72774e13dadd2211f77bbad91c2044fa0eae5401ccd0082887f"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
