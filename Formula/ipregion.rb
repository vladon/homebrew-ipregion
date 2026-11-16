class Ipregion < Formula
  desc "IP geolocation and region availability checks from your terminal"
  homepage "https://ipregion.top"
  url "https://github.com/vladon/ipregion/releases/download/v1.3.10/ipregion.sh"
  version "1.3.10"
  sha256 "bfb5d6fc85ea9e42bbeb770c8b1b94972dabe0ac18112cca5b6ad64307b4e676"
  license "MIT"

  def install
    bin.install "ipregion.sh" => "ipregion"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ipregion --help")
  end
end
