# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.419"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.419/reactor-cli_v1.20261111.419_darwin-arm64.tar.gz"
      sha256 "32fde00ec33716eabb71a9595974be6ebace51d5d197a5ce56166001e2f77e46"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.419/reactor-cli_v1.20261111.419_darwin-amd64.tar.gz"
      sha256 "de40ca142dabe530c79ca12f15bd911d88f29ff527cd9d482ff869925660f67b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.419/reactor-cli_v1.20261111.419_linux-arm64.tar.gz"
      sha256 "0596dcaa0cf64b02e235151dd31ec0a9bbb001d7a5313db43cfc768e67dc4f64"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.419/reactor-cli_v1.20261111.419_linux-amd64.tar.gz"
      sha256 "3721c732efb968154f77efaf24c4d4442de6e335fc735ee4b78809fe8d909780"
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
