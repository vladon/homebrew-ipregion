class Ipregion < Formula
  desc "IP geolocation and region availability checks from your terminal"
  homepage "https://ipregion.top"
  url "https://github.com/vladon/ipregion/releases/download/v1.3.8/ipregion.sh"
  version "1.3.8"
  sha256 "7d1e75e8e2abc68f63f68628c50d08637f26cad26db71f1db8a1d2e438f3a18d"
  license "MIT"

  def install
    bin.install "ipregion.sh" => "ipregion"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ipregion --help")
  end
end
