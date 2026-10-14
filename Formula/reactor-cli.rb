# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261014.332"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.332/reactor-cli_v1.20261014.332_darwin-arm64.tar.gz"
      sha256 "6881a286052459b3d30991a906278d620783c592502e788d5e0be5507a5ef11b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.332/reactor-cli_v1.20261014.332_darwin-amd64.tar.gz"
      sha256 "b222389fbaa4d66b6e3ade439786252d5dd61aa60a00ba458cabe957b652763d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.332/reactor-cli_v1.20261014.332_linux-arm64.tar.gz"
      sha256 "d23ed384785ff5889eb16c3532b4ef5ebb912c351ec7489eae28e36a4cd95472"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.332/reactor-cli_v1.20261014.332_linux-amd64.tar.gz"
      sha256 "c84184e461923dcedb5910c1c0f9e40639081d3d41d85a4f6891cbc7a1ba2ef8"
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
