class Ipregion < Formula
  desc "IP geolocation and region availability checks from your terminal"
  homepage "https://ipregion.top"
  url "https://github.com/vladon/ipregion/releases/download/v1.3.5/ipregion.sh"
  version "1.3.5"
  sha256 "dda8828310d2cebfe41ab15fce17fdb29b3d90a909ee4cbff53c94237b1eb2cd"
  license "MIT"

  def install
    bin.install "ipregion.sh" => "ipregion"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ipregion --help")
  end
end
