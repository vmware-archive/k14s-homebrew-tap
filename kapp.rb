class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.10.0"
  url "https://github.com/k14s/kapp/releases/download/v0.10.0/kapp-darwin-amd64"
  sha256 "eb9e26fd1919bdd09a4843b95ca73f381d5f333478bb73a3ea1c8060eca46564"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
