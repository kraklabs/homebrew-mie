# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_darwin_arm64.tar.gz"
      sha256 "22f855156731016012d5d51968af2270c1a87a897c65d53bb718de17a98f0a55"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_darwin_amd64.tar.gz"
      sha256 "9ea71d654269e555e30318210b67d5f4b3db97942a2c7c0b64ecdce100ebb622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_linux_arm64.tar.gz"
      sha256 "5abd72e7c8280c2361efd040b417c7862c0463552afc8ac35340473083deff10"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_linux_amd64.tar.gz"
      sha256 "695317b9416acf55ed254f84b38323affb70dcb6a11feabd37e4eec86943caf0"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
