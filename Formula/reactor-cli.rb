# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.256"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.256/reactor-cli_v1.20261104.256_darwin-arm64.tar.gz"
      sha256 "9df136e459d1cc81d200ebb0e2ce6cfb8b778b191555cdf58e9b2ff8b6b7c532"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.256/reactor-cli_v1.20261104.256_darwin-amd64.tar.gz"
      sha256 "dc46cb73b9ce18f94cc651407d2b80fc2af84449625226e923ab43ee6e2716c1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.256/reactor-cli_v1.20261104.256_linux-arm64.tar.gz"
      sha256 "946fd6cec7d6e1684ce16f428b783492b8116f3eca33d3c28826c82df7c9c970"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.256/reactor-cli_v1.20261104.256_linux-amd64.tar.gz"
      sha256 "4fb9a8bf29c2c9a1de060b4d11abbc67d1f8607c6f5653d8c7416cdd3aa28cf4"
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
