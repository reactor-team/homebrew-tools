# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260910.25708"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25708/reactor-cli_v1.20260910.25708_darwin-arm64.tar.gz"
      sha256 "a1a9b51998127e25a7c6c47a2c3adf03ba0adbdf91b7e26c025ea5447b62e6ac"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25708/reactor-cli_v1.20260910.25708_darwin-amd64.tar.gz"
      sha256 "852b9376a5398db9b879d14ae6a417b16476f4736f9bf40cc663d41910d6f2c4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25708/reactor-cli_v1.20260910.25708_linux-arm64.tar.gz"
      sha256 "3b2cc494e6a55aa35cb59b8d2ae66bd699a1758372d8144ac9f9342ed0e3078e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25708/reactor-cli_v1.20260910.25708_linux-amd64.tar.gz"
      sha256 "cf78e41922cda0a1babfa530177eee48c0bb3012775cf5495ecd4f94eeed3e7f"
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
