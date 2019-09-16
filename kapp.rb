class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.12.0"
  url "https://github.com/k14s/kapp/releases/download/v0.12.0/kapp-darwin-amd64"
  sha256 "2e9aec868607019d46fe2b8b1a9962d5fd347f7876fbe988df98c11a32d7efa7"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
