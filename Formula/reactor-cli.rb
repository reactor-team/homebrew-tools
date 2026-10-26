# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261026.105"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.105/reactor-cli_v1.20261026.105_darwin-arm64.tar.gz"
      sha256 "96cd010b7f4eb110878737e1df6717aff9bbbec2abe48b5dcec955c53716d63b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.105/reactor-cli_v1.20261026.105_darwin-amd64.tar.gz"
      sha256 "522f59c2d49b6d64c8a8e7a82c46b9f28983418df56ecc7384a58afb5e694f0a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.105/reactor-cli_v1.20261026.105_linux-arm64.tar.gz"
      sha256 "5a195861737e0227e5127614d8da569ac5d0d5eca4dd8402e8c24006d4692db9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.105/reactor-cli_v1.20261026.105_linux-amd64.tar.gz"
      sha256 "1cf3c01bdb035046e006ec54e07b0562dab500cb809fbd8257b8a7d323ca9660"
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
