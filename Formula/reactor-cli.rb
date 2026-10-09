# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.231"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.231/reactor-cli_v1.20261009.231_darwin-arm64.tar.gz"
      sha256 "6023c958bde2c44bd6707fa7d18ec81415c31b6efd6bbb4eca4085d9d8cb71f0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.231/reactor-cli_v1.20261009.231_darwin-amd64.tar.gz"
      sha256 "8e1a9a0fe8d4c74e3fa9d42c2b5bc7fab27a178ed3ba929849cbe790d1d5e0f3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.231/reactor-cli_v1.20261009.231_linux-arm64.tar.gz"
      sha256 "e829f1e3da4ef35562278448c384cbbc8ee5cf033ab1e08c7244fb8b28d7bd92"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.231/reactor-cli_v1.20261009.231_linux-amd64.tar.gz"
      sha256 "5fd6000ed4c0ff049e52c61e6fca31c5bbdc027ee856d767cc67af7e5ae159ce"
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
