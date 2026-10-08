# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.149"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.149/reactor-cli_v1.20261008.149_darwin-arm64.tar.gz"
      sha256 "e84b561a58c5fe5a11fe85c9278395683464f00e31b7c67ad87b4a4456fac7ce"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.149/reactor-cli_v1.20261008.149_darwin-amd64.tar.gz"
      sha256 "61411ce3be47717d6b494b0fe13525e8c3174fa3c371b3a9f3345d00e4adbf5d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.149/reactor-cli_v1.20261008.149_linux-arm64.tar.gz"
      sha256 "e5e85b2d04cc986c1c1e9f90fd3d3f2858e5d78a52a1e5d46a1b4ef85b048caa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.149/reactor-cli_v1.20261008.149_linux-amd64.tar.gz"
      sha256 "0d4bdcb744afeba0e33c0a3bd3b917d2f3b28713d308e205ecd3fdbc11f796f0"
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
