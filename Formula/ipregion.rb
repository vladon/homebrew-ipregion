class Ipregion < Formula
  desc "IP geolocation and region availability checks from your terminal"
  homepage "https://ipregion.top"
  url "https://github.com/vladon/ipregion/releases/download/v1.3.7/ipregion.sh"
  version "1.3.7"
  sha256 "2c488efef269c644c7bce2cc6fe259bce962b06264ee2ea586d5a420fcca6341"
  license "MIT"

  def install
    bin.install "ipregion.sh" => "ipregion"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ipregion --help")
  end
end
