class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.9.0"
  url "https://github.com/k14s/kapp/releases/download/v0.9.0/kapp-darwin-amd64"
  sha256 "942f78ff3ae792807b16ffc0279cb70cf399782d30f632342ea8345f04f3280c"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
