# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261007.276"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.276/reactor-cli_v1.20261007.276_darwin-arm64.tar.gz"
      sha256 "288e0f89fb2846c87896185eb14bd61734517de716365eb90b8133d3b1ad1f1e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.276/reactor-cli_v1.20261007.276_darwin-amd64.tar.gz"
      sha256 "c18f348b867ba96ded39ce3a714dabefca03d4a1f7b326d5fc69720a3213a538"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.276/reactor-cli_v1.20261007.276_linux-arm64.tar.gz"
      sha256 "a7bbdc6eb9b06542addcab9cb2e5f623060603eb7326dfa77a292e1654d3375b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261007.276/reactor-cli_v1.20261007.276_linux-amd64.tar.gz"
      sha256 "6039afa15223fb444b6ef5a90ee43e5c6e57d8e9aec5d89fd4077f24ec9b910e"
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
