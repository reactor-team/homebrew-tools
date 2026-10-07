# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261007.158"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.158/reactor-cli_v1.20261007.158_darwin-arm64.tar.gz"
      sha256 "0ad9e57d3cdec35ec9023098584437765f1619cf08ab3bf8282a2713069a0dfb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.158/reactor-cli_v1.20261007.158_darwin-amd64.tar.gz"
      sha256 "ee39ea07074fe5bbc74f79bb818204b61af8a1776099286059561b044ef79a80"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.158/reactor-cli_v1.20261007.158_linux-arm64.tar.gz"
      sha256 "88bed42496a640e3629247c781127aae4d1916d3d924419d0c31ee8ced981580"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.158/reactor-cli_v1.20261007.158_linux-amd64.tar.gz"
      sha256 "e2a157eecabdf4f1bf263de2af49ae5e1b7bd16b9b7a24b231e70423a8169ad8"
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
