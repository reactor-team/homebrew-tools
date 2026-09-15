# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260915.26737"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26737/reactor-cli_v1.20260915.26737_darwin-arm64.tar.gz"
      sha256 "8cbecf08e4456d0f5066a2d3ee7153e80e3ec97b4562ddaa159aa6a5857e497e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26737/reactor-cli_v1.20260915.26737_darwin-amd64.tar.gz"
      sha256 "5e57f63593d8da1d53838c3429302e23c685eb97f850dd5e4831d67443acd6d0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26737/reactor-cli_v1.20260915.26737_linux-arm64.tar.gz"
      sha256 "3a8931be2edbe6e151608a02ea3e1534cbb821b80fac038bc7cbf6ce9a5bd93f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26737/reactor-cli_v1.20260915.26737_linux-amd64.tar.gz"
      sha256 "7a7fd15cb7d5fddcc3b002b6aac932ce1a0ecd366752f0ecc7c35884bb812102"
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
