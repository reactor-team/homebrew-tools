# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.381"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.381/reactor-cli_v1.20261013.381_darwin-arm64.tar.gz"
      sha256 "25c41b0c009e055dc62d33ed6e5de9eacdf34a1e66a378327173999758e90b71"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.381/reactor-cli_v1.20261013.381_darwin-amd64.tar.gz"
      sha256 "ce268c942ba49fe09d5b4f002e81c16042868a6864d6b7507dccc9b90c29e140"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.381/reactor-cli_v1.20261013.381_linux-arm64.tar.gz"
      sha256 "39e736fc8d9f959683291631451a889007b3dbd5f19b9272893f707a40b0156a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.381/reactor-cli_v1.20261013.381_linux-amd64.tar.gz"
      sha256 "4243899c74d72b7e2fe3b0e9d378ae374e154665a06c7b4d9333ea946a35e478"
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
