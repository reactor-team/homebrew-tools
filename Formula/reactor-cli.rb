# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.376"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.376/reactor-cli_v1.20261013.376_darwin-arm64.tar.gz"
      sha256 "7587d55cd63ec8dc1060541fcf77767bee0cfbd6d1767ef0ed814ae9c8d1a983"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.376/reactor-cli_v1.20261013.376_darwin-amd64.tar.gz"
      sha256 "576972dca0d95d482a23300df39ee1b92de17349af95a020e8cb5ed1a0b38ecb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.376/reactor-cli_v1.20261013.376_linux-arm64.tar.gz"
      sha256 "767a00dd8b7b9694e26afb8c9fff4884f251cef8c978d7052e04ddf2fc31f7a1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.376/reactor-cli_v1.20261013.376_linux-amd64.tar.gz"
      sha256 "f2018eff9a3339f07adaf260ce167b8b83eea57eeb9237aecfd6eb26a0c1a158"
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
