# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260915.26780"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26780/reactor-cli_v1.20260915.26780_darwin-arm64.tar.gz"
      sha256 "f8faad574b3a060b1a2abcdbefb5192ef6318faccc2f394205cb10a61674b045"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26780/reactor-cli_v1.20260915.26780_darwin-amd64.tar.gz"
      sha256 "cbe6ee139c37321cd16b31704995166b4254c75643e96f9173307752cc78ecab"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26780/reactor-cli_v1.20260915.26780_linux-arm64.tar.gz"
      sha256 "74cb25a7198fccd0e309f5394d52702edf0bea9fda58bcb1556ca0e26210345b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26780/reactor-cli_v1.20260915.26780_linux-amd64.tar.gz"
      sha256 "4b7ffdb9618f85b7d45c92e709033dfd5afc6b7a6f6c02cf2240dc1edfdc0790"
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
