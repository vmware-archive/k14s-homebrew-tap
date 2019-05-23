class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.6.0"
  url "https://github.com/k14s/kapp/releases/download/v0.6.0/kapp-darwin-amd64"
  sha256 "7ffb77dac2a6c1b7514eca1e0b92700cffdc5f84ac57e17585c4809a0e1795bc"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
