# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.100"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.100/reactor-cli_v1.20260929.100_darwin-arm64.tar.gz"
      sha256 "5bae520bcdd4b190d99961a1e4c868b843879a256be94f8ec1a9fbd0040dfd62"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.100/reactor-cli_v1.20260929.100_darwin-amd64.tar.gz"
      sha256 "fd1dd9d5cca982bee0e56c57d1955300e410703b155297576e16230c1b75d22c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.100/reactor-cli_v1.20260929.100_linux-arm64.tar.gz"
      sha256 "1e11428005262e4887d8cc4146f6bdb21fcb7874b995cec2154f5828af791165"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.100/reactor-cli_v1.20260929.100_linux-amd64.tar.gz"
      sha256 "153c6072c69963cd391148675fee1bc895578aba76f3c6d13bcd90b332dbcdbe"
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
