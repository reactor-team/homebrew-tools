# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261026.232"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.232/reactor-cli_v1.20261026.232_darwin-arm64.tar.gz"
      sha256 "e53110d587b754e6585a2c63ed1a80950cf4da6652582779d6959184073ab1a9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.232/reactor-cli_v1.20261026.232_darwin-amd64.tar.gz"
      sha256 "78e852f60228ef065164ba55f346ec7e0dd43bcf9ee1495ac0ac0f9b54b89855"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.232/reactor-cli_v1.20261026.232_linux-arm64.tar.gz"
      sha256 "bcdc00d481be26d11f1d900730239ea410b32c06db7b5bd8cd4cc4cadbc7d19f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.232/reactor-cli_v1.20261026.232_linux-amd64.tar.gz"
      sha256 "a58566f917d5bfac26d8e58290f1124e40d613711da90baa0729a8ceda0d2575"
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
