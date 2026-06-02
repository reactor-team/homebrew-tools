# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260602.14835"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14835/reactor-cli_v1.20260602.14835_darwin-arm64.tar.gz"
      sha256 "cb9a537f1d1c1d0c756f954102188ffc4810b1b39003a319e0fdcdf20b8156f4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14835/reactor-cli_v1.20260602.14835_darwin-amd64.tar.gz"
      sha256 "515c97366fe58b2bb0f73d4b37e6c5d71ee8c218009243307e2bc5f8ec184121"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14835/reactor-cli_v1.20260602.14835_linux-arm64.tar.gz"
      sha256 "692a11d0fc8d4cb58bef705a9d3b9aa71df7549ed4fe77bebdf770a351586d9a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14835/reactor-cli_v1.20260602.14835_linux-amd64.tar.gz"
      sha256 "a821851da8e18500dbb6063ae5e76b365dd5091209b35c36acbbdfba64123134"
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
