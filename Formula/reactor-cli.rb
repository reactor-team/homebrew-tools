# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.113"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.113/reactor-cli_v1.20261111.113_darwin-arm64.tar.gz"
      sha256 "8ea82595cd813af911c548aa4f8c7ed1d58e89f6706316cdb471fd8f87c799d7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.113/reactor-cli_v1.20261111.113_darwin-amd64.tar.gz"
      sha256 "b7e842682bf50468ce42eb5f5d2b0f00277609e0dde837ca3120fa287dd03215"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.113/reactor-cli_v1.20261111.113_linux-arm64.tar.gz"
      sha256 "6f35164ae822b5e5fdea694ae90c9b841e85677ffba989e96c43cafdab14f909"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.113/reactor-cli_v1.20261111.113_linux-amd64.tar.gz"
      sha256 "521b7231d5bcabb7c293d4a15b1a1086be63af54f888a64dd87d5b00aab20030"
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
