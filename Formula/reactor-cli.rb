# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260821.22648"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22648/reactor-cli_v1.20260821.22648_darwin-arm64.tar.gz"
      sha256 "37e2b4b4d55b61cfa66d358643c6f113ed42889762d0aba399079127b855c743"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22648/reactor-cli_v1.20260821.22648_darwin-amd64.tar.gz"
      sha256 "a5e86c84e605a7c66138dac174214c2f99c52ccf7d27ea6904c3a71c72563c85"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22648/reactor-cli_v1.20260821.22648_linux-arm64.tar.gz"
      sha256 "c64a3e161dd64a19ebedde67601d7b11638eb0f7c89317afd6031bacaff25c3a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22648/reactor-cli_v1.20260821.22648_linux-amd64.tar.gz"
      sha256 "b6ef68da5c12653bbccf121c6c3993d9a5c840595d959066743e8a84350f5b66"
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
