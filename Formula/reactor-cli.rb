# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260804.20807"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20807/reactor-cli_v1.20260804.20807_darwin-arm64.tar.gz"
      sha256 "437e5b46035c27af3ebf4e3de349a766210594618de4c38396cd2646be5beae7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20807/reactor-cli_v1.20260804.20807_darwin-amd64.tar.gz"
      sha256 "45f906ada001fc23ce31914461f2be0050c68eb5095a174eba5373800970d92b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20807/reactor-cli_v1.20260804.20807_linux-arm64.tar.gz"
      sha256 "7be97297191d3ff8b5917225d1f081db4518e92b00241d0c167c466dd0a4f415"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260804.20807/reactor-cli_v1.20260804.20807_linux-amd64.tar.gz"
      sha256 "7b7727cbc105807d86eca261c58c3b3e6735ef3bc5c79f3b67a13ff3d2b31b4d"
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
