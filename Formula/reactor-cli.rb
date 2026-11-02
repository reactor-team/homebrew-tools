# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.169"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.169/reactor-cli_v1.20261102.169_darwin-arm64.tar.gz"
      sha256 "c060401032cfee537cb9f0a7fbcecfa01f2111bdbdf842666fcda92ed1db8ce7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.169/reactor-cli_v1.20261102.169_darwin-amd64.tar.gz"
      sha256 "031e20cf19a6d991832dc1399159c6055411279d4705adc11211c9dc3e76aea0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.169/reactor-cli_v1.20261102.169_linux-arm64.tar.gz"
      sha256 "673db1d9921e744e5cd145e6d3cf9f178341a149a4580db1fabe39a5489c5957"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.169/reactor-cli_v1.20261102.169_linux-amd64.tar.gz"
      sha256 "620859835c4a0ba7c79a8e71e20e8de08797f6e08110d3b28d99e28ba90aedbe"
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
