# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28853"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28853/reactor-cli_v1.20260928.28853_darwin-arm64.tar.gz"
      sha256 "4faa7b6f9a5572456ca8cda68b8edb5c3c5d965777a6078fa798c99984b749d4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28853/reactor-cli_v1.20260928.28853_darwin-amd64.tar.gz"
      sha256 "4c38e3bafe47bedce8d0ae7463e1024ec3f98208a01c23e6ddad359e95c0dabd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28853/reactor-cli_v1.20260928.28853_linux-arm64.tar.gz"
      sha256 "aedb741450f74f2444ec7f8c101c5e05eecc17e6d2cea7f668aa3f9f20e956b5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28853/reactor-cli_v1.20260928.28853_linux-amd64.tar.gz"
      sha256 "19deb60cb6ea2bfcb865964740eba5033b63252825542d172c34e2d616b58a7a"
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
