# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261027.299"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.299/reactor-cli_v1.20261027.299_darwin-arm64.tar.gz"
      sha256 "27a3b9c9fd7595e83684b68775e90e52be19b9d4eeb6afa549664db8564ce174"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.299/reactor-cli_v1.20261027.299_darwin-amd64.tar.gz"
      sha256 "9c98940b0b17a02ecb0563714004d4a0114de12711a464206b6fea5ca997f7d0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.299/reactor-cli_v1.20261027.299_linux-arm64.tar.gz"
      sha256 "aba97874b72dfafcd9744fbaa3d7aac8484a64507724149f442d7b0874cddf3a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.299/reactor-cli_v1.20261027.299_linux-amd64.tar.gz"
      sha256 "157b0f12b4dd7f1c7027cc7a8b1671e8af9f0b5adf8a141edb3470a4e6913fbb"
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
