# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.15/reactor-cli_v1.20261110.15_darwin-arm64.tar.gz"
      sha256 "43a9507ee7f82b9dbfa803fe6115cc5a4fa86fc6506e3227039461db0511cf0b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.15/reactor-cli_v1.20261110.15_darwin-amd64.tar.gz"
      sha256 "6d40467579edcb1bc8b390db11d58601de130a74d71c5fa1e45686552c8ddfe5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.15/reactor-cli_v1.20261110.15_linux-arm64.tar.gz"
      sha256 "40772d185c427bd66789a3563b524ef24a7a02dde8c178c2c1a1b99aa2d5bdca"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.15/reactor-cli_v1.20261110.15_linux-amd64.tar.gz"
      sha256 "b42e47dc7483651ef699ccd0e25c33ca1530fdf677956fbdf00af81f032ac280"
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
