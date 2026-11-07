# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261107.231"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.231/reactor-cli_v1.20261107.231_darwin-arm64.tar.gz"
      sha256 "3f9c0b6b38f16523a4931eac6038827867e392a1105c559efaf905613e2656f0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.231/reactor-cli_v1.20261107.231_darwin-amd64.tar.gz"
      sha256 "9de59ed9d923f70abf95094635f17854741dc4ff36d9bd58e61cef95ae73a07a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.231/reactor-cli_v1.20261107.231_linux-arm64.tar.gz"
      sha256 "8f282e7aaaaf4d03e799992e850f40319eabf6a1a78a98ca8cd422dd935fdd59"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.231/reactor-cli_v1.20261107.231_linux-amd64.tar.gz"
      sha256 "8f223e959d40762715a51b436912d60502be247d7698cb776dd12dc7ff1bb45f"
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
