# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.442"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.442/reactor-cli_v1.20261111.442_darwin-arm64.tar.gz"
      sha256 "458a7ef894e69cc1892f0fc363793bf06273206d4e7d240b83626226405f0f31"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.442/reactor-cli_v1.20261111.442_darwin-amd64.tar.gz"
      sha256 "06255702668f2e6ba6121096e660f9b64b60e1cb961bce20216080b452bb93e6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.442/reactor-cli_v1.20261111.442_linux-arm64.tar.gz"
      sha256 "a66d037f86265b348c3cdf3a076961158bdb7855dd9f2a06f6789fbad346b941"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.442/reactor-cli_v1.20261111.442_linux-amd64.tar.gz"
      sha256 "e4165f9d039b1cea707f384bf9599392c7faa151129aab4c9a516cb5fdcbed1b"
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
