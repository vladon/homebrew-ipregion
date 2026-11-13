class Ipregion < Formula
  desc "IP geolocation and region availability checks from your terminal"
  homepage "https://ipregion.top"
  url "https://github.com/vladon/ipregion/releases/download/v1.3.9/ipregion.sh"
  version "1.3.9"
  sha256 "4dd87fac6c64e13bea75b2b2b582f57c754bc17510bf8151fb79ad6686d688a0"
  license "MIT"

  def install
    bin.install "ipregion.sh" => "ipregion"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ipregion --help")
  end
end
