# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.173"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.173/reactor-cli_v1.20261024.173_darwin-arm64.tar.gz"
      sha256 "9e3d9016afd499fddc52bc8c591c1339287e1f4cc7146a1583078cfa89d94ba8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.173/reactor-cli_v1.20261024.173_darwin-amd64.tar.gz"
      sha256 "20728ca5fc03b15fe50497d018d079f0b2c20080a25097b0dc979def1fcb1bd0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.173/reactor-cli_v1.20261024.173_linux-arm64.tar.gz"
      sha256 "925ddec6106a13d8ef7ce35519e34735e73eecc1d0167322d1621452c15ebf20"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.173/reactor-cli_v1.20261024.173_linux-amd64.tar.gz"
      sha256 "bda913a5846980f801a177dbf34122c90ebe4cb6a9c1c446d0892897e6832690"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
