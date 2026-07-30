# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260730.20169"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20169/reactor-cli_v1.20260730.20169_darwin-arm64.tar.gz"
      sha256 "1eadeb8bafc607f7a61f7c4e46c0cac3e706e2120c32a12c963230a0cf4f53c0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20169/reactor-cli_v1.20260730.20169_darwin-amd64.tar.gz"
      sha256 "fcd41349afea8bfef2d59e350f6fc6a065eab5b444fd0af2546b622503d0ecb1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20169/reactor-cli_v1.20260730.20169_linux-arm64.tar.gz"
      sha256 "75c0528151946227af0aaec7eb4c5b5ca4121425c229a758e82971ca05b275b1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20169/reactor-cli_v1.20260730.20169_linux-amd64.tar.gz"
      sha256 "232280eb07f2d2f5212f27172fceeb61ae976c8892c88ed1c72912f9081d322b"
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
