# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.24952"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24952/reactor-cli_v1.20260904.24952_darwin-arm64.tar.gz"
      sha256 "931923dc206a52cc333df78f886446d3efebcf2dfc081beecf1b37098cc0381d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24952/reactor-cli_v1.20260904.24952_darwin-amd64.tar.gz"
      sha256 "1e4c8aeed538561426b0c9e19b70280f30fdb970af6c868f20e1c58eb21d64eb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24952/reactor-cli_v1.20260904.24952_linux-arm64.tar.gz"
      sha256 "7d9784838b3d916c9a236130c84d30c3901b0bcb4f58fab89fab92cc7b577ca3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24952/reactor-cli_v1.20260904.24952_linux-amd64.tar.gz"
      sha256 "d2ef5289910b820478434e60d03278f751b5275e4b0b7ff763e792ce585afff9"
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
