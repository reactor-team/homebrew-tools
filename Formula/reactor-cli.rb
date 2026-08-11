# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260811.21477"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21477/reactor-cli_v1.20260811.21477_darwin-arm64.tar.gz"
      sha256 "73116e834f0c3ad7deff36402bfdfca32d2d2f2a5580132807dc791ed681c703"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21477/reactor-cli_v1.20260811.21477_darwin-amd64.tar.gz"
      sha256 "75e2cde486299776a36a7df23f41ed1d161c0d19edb6ccb84145fd22beaf3b04"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21477/reactor-cli_v1.20260811.21477_linux-arm64.tar.gz"
      sha256 "034d1a1e443302155486be95c3de041d5dc4e0cfd8f8bbbb97f70d5bd7d38185"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21477/reactor-cli_v1.20260811.21477_linux-amd64.tar.gz"
      sha256 "79b2f6295546f69a4a6cae1d967d46f63b5478fcb3088d483edb588ebf08f3b8"
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
