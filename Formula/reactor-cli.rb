# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260713.18239"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18239/reactor-cli_v1.20260713.18239_darwin-arm64.tar.gz"
      sha256 "c4efe1d3d80f0af638a5e1b318e465cc5e160be2e955f646574d083cda0134f4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18239/reactor-cli_v1.20260713.18239_darwin-amd64.tar.gz"
      sha256 "cf73d938abd5fa3af7d1664040062e49e099e45573451bfd4e37acda0c3edf6a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18239/reactor-cli_v1.20260713.18239_linux-arm64.tar.gz"
      sha256 "3c8d3ec624a81c956dd974a65d49f5d74881abb1c488e00798be0636048d9b31"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18239/reactor-cli_v1.20260713.18239_linux-amd64.tar.gz"
      sha256 "efaa34f372605a79fad3313b0f83f818d2a5b8341fcdc839d01e82b85164e2eb"
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
