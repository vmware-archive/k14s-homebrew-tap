class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.29.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.29.0/kapp-darwin-amd64"
    sha256 "32239ec4684a61b07148a7613402ae5fdb139f02e84dc1e8ba8082190bc6e9d8"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.29.0/kapp-linux-amd64"
    sha256 "24b235f9929c7ce700b53682264793c3f977dc6475e4d9c8566419400cf6cb27"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
