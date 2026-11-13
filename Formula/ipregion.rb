class Ipregion < Formula
  desc "IP geolocation and region availability checks from your terminal"
  homepage "https://ipregion.top"
  url "https://github.com/vladon/ipregion/releases/download/v1.3.6/ipregion.sh"
  version "1.3.6"
  sha256 "f48bfc3a2975d00e920b8afb1b8327921b9863fdac3a607c646a7747ae1d1525"
  license "MIT"

  def install
    bin.install "ipregion.sh" => "ipregion"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ipregion --help")
  end
end
