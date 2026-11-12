# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.318"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.318/reactor-cli_v1.20261112.318_darwin-arm64.tar.gz"
      sha256 "f6652d52da9cf785943efb7fad40526f929c374d23a18208e8f97a962df2946b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.318/reactor-cli_v1.20261112.318_darwin-amd64.tar.gz"
      sha256 "80f830e449c2b5e54bcc89bf800c3448a004cdc9cb332dd2c6a7c6341a3aa363"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.318/reactor-cli_v1.20261112.318_linux-arm64.tar.gz"
      sha256 "791d4211d52df6d0ebe151eaef8940176c1903125205c1b6f882c73bac960420"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.318/reactor-cli_v1.20261112.318_linux-amd64.tar.gz"
      sha256 "07d040d3507e43fc392e7cbb3a75ca3ad82876a38d554a6cdafa0d7fa79770ae"
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
