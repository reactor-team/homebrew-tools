# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261012.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.2/reactor-cli_v1.20261012.2_darwin-arm64.tar.gz"
      sha256 "1a9b630d9a37c1199858313c10ff92185f958dfdb30fa23f19b11dddfc0da57d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.2/reactor-cli_v1.20261012.2_darwin-amd64.tar.gz"
      sha256 "adec1b43267751ef01050ccfba5b193f3319cd81f5cab879dd730b9093839a1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.2/reactor-cli_v1.20261012.2_linux-arm64.tar.gz"
      sha256 "9885742452682d5daae6172f5e528fcabcd5c1d9554b42376621a5f415117a8b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.2/reactor-cli_v1.20261012.2_linux-amd64.tar.gz"
      sha256 "b8a8d4c9ad27d8be0630a5e7ce5da5b5b32008efdb980920056fffadc7843a7d"
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
