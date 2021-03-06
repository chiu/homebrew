require 'formula'

class Lilv < Formula
  homepage 'http://drobilla.net/software/lilv/'
  url 'http://download.drobilla.net/lilv-0.20.0.tar.bz2'
  sha1 'b3a7d0089b16b04114895d47a898b8d494774927'

  bottle do
    cellar :any
    sha256 "d20c024762fd5d230431c4047881115d83d459d29d3a04ea4d3668a54c918612" => :yosemite
    sha256 "719480d52e2c05d68b8a922cf7058a825cf30a103d91d604185241d5db87be2d" => :mavericks
    sha256 "bec3ad89f065c13c9d5d72182fcc5ca11bf913b2238bc3bddf8b09a2e56dea98" => :mountain_lion
  end

  depends_on 'pkg-config' => :build
  depends_on 'lv2'
  depends_on 'serd'
  depends_on 'sord'
  depends_on 'sratom'

  def install
    system "./waf", "configure", "--prefix=#{prefix}"
    system "./waf"
    system "./waf", "install"
  end
end
