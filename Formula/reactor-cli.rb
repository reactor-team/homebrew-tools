# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261107.60"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.60/reactor-cli_v1.20261107.60_darwin-arm64.tar.gz"
      sha256 "85d042dea17eff3adb7cc0136b27590924ade34814d396e5c74f0f293dd2f78b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.60/reactor-cli_v1.20261107.60_darwin-amd64.tar.gz"
      sha256 "112f71f6e49308044477009a6a345e1615bc251e3bd16cd97c080a2ee955479a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.60/reactor-cli_v1.20261107.60_linux-arm64.tar.gz"
      sha256 "c7d5d62e507c0186e19e1ef22ba04593978548aca1b6041d23a071becee37588"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.60/reactor-cli_v1.20261107.60_linux-amd64.tar.gz"
      sha256 "abee613a02572e36683ab656876702ca035af50a05bcbe42c4f7e22228a9fb90"
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
