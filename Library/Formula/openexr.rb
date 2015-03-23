require 'formula'

class Openexr < Formula
  homepage 'http://www.openexr.com/'
  url 'http://download.savannah.gnu.org/releases/openexr/openexr-2.2.0.tar.gz'
  sha1 'd09a68c4443b7a12a0484c073adaef348b44cb92'

  bottle do
    cellar :any
    revision 1
    sha1 "be055103cf96edbd87f01d200ae97365a13dfd33" => :yosemite
    sha1 "5263df7bfe3a4a6c5e8c21aaa9d1a49cad666e3d" => :mavericks
    sha1 "f32df24d8a0c74d0b8e53b9e0e15d60dceaf0b6a" => :mountain_lion
  end

  depends_on 'pkg-config' => :build
  depends_on 'ilmbase'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end

