# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.9/reactor-cli_v1.20261110.9_darwin-arm64.tar.gz"
      sha256 "53f0284dbf97aced70b437c3730d1978d34498637a0243d2e38e39704d9e8994"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.9/reactor-cli_v1.20261110.9_darwin-amd64.tar.gz"
      sha256 "5545221e862f006097314e4beaf31e25dd50b49ea7665816164397b4eb0deb96"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.9/reactor-cli_v1.20261110.9_linux-arm64.tar.gz"
      sha256 "562efe5481f128df1f4e76d561c9dce262e1e53efdfbd726d3f3e3f9830e4b21"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.9/reactor-cli_v1.20261110.9_linux-amd64.tar.gz"
      sha256 "0ec64796398b1290bd0a96770b2f5bf71c74717bbcd6290b6462b7cb21a3b106"
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
