class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.16.0"
  url "https://github.com/k14s/kapp/releases/download/v0.16.0/kapp-darwin-amd64"
  sha256 "6c89df67562301aff4bf76c700ccbd04a60bccd34adac332e67c518791b2333c"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
