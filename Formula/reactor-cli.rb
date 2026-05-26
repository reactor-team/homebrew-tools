# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260526.12"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_darwin-arm64.tar.gz"
      sha256 "0bbe25c98685b240c3de8dc5b516be9980408d0fcd80b8487c1ac037879ccc45"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_darwin-amd64.tar.gz"
      sha256 "db01dc91b874f665837d3c7e9d93892d6ac022def1b2a602c2b9c13007809483"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_linux-arm64.tar.gz"
      sha256 "81583d3f43edea2288791167642426f6abaeb19212b006af5d072a54c39fcc7d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260526.12/reactor-cli_v1.20260526.12_linux-amd64.tar.gz"
      sha256 "50df02cf243b8d8cd3a0b871895f2d991eeb03a16caa5dfd9e920a75a9ffc27a"
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
