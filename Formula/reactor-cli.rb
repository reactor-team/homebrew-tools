# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261012.147"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.147/reactor-cli_v1.20261012.147_darwin-arm64.tar.gz"
      sha256 "0a6c33544420447334b5d3e8ddabe7fb9568bfb07b5f0ae05aec728649f26acc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.147/reactor-cli_v1.20261012.147_darwin-amd64.tar.gz"
      sha256 "937b8839f55f0807450b851e0a59dd35a45300c401e9da2c12d74a3efb488ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.147/reactor-cli_v1.20261012.147_linux-arm64.tar.gz"
      sha256 "e21b6ebb9440fc0e04ec272c24e3a7e4915b8c4375059de0801c92ef0babcacd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.147/reactor-cli_v1.20261012.147_linux-amd64.tar.gz"
      sha256 "627f8f7850f89d37ae5ef22afcd4ad90934bfbedf035f76dc675e71400aae37b"
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
