# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.89"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.89/reactor-cli_v1.20261009.89_darwin-arm64.tar.gz"
      sha256 "28354ab026b2c9f0af5238e3344b7accf7c3047410322de154a163ebc46f641f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.89/reactor-cli_v1.20261009.89_darwin-amd64.tar.gz"
      sha256 "80695d79a1e846c608f76cb583ba10a1fdf30363666701f9e0ba3394177c3508"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.89/reactor-cli_v1.20261009.89_linux-arm64.tar.gz"
      sha256 "fa8088137f2a1fe0e7fffe6407c887756580e34ac74024de28bd121a56041d04"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.89/reactor-cli_v1.20261009.89_linux-amd64.tar.gz"
      sha256 "8907fe1d41e5b7510e298c09cf1ecdbd2122584de39af1dc2fcb8f8c073204fc"
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
