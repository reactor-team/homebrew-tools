# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.209"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.209/reactor-cli_v1.20261002.209_darwin-arm64.tar.gz"
      sha256 "bb8da327e5e17a05cdfc9566de6687c566bc850f9bf89d6d0facaeff2e802591"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.209/reactor-cli_v1.20261002.209_darwin-amd64.tar.gz"
      sha256 "59710d546e2b05209a950eb7b1e8889fb02b7691cb81bffb8502c6b7cbccab3b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.209/reactor-cli_v1.20261002.209_linux-arm64.tar.gz"
      sha256 "6fcdfc06c482f37e5d48c2c7c508eea62e622336f1b9e8d2aa826c3ebbbcdc2f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.209/reactor-cli_v1.20261002.209_linux-amd64.tar.gz"
      sha256 "f83c884a912c95092d09cee5b35ca655afe8ee1da4b74f1be1159de24ea23be5"
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
