# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.517"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.517/reactor-cli_v1.20261029.517_darwin-arm64.tar.gz"
      sha256 "16c5f3468053f4f66ec8cf4bfb8432bb0a829a96072e904b8482d18304bc2ce2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.517/reactor-cli_v1.20261029.517_darwin-amd64.tar.gz"
      sha256 "db457d3b7ecc3910be4c08dc30d902a74f0bfd579be5d8837ce6469382239bfc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.517/reactor-cli_v1.20261029.517_linux-arm64.tar.gz"
      sha256 "bb52b1b21ec89bc49a5ce87105c48389394ad5c91b381d728ae47bc305cbb635"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.517/reactor-cli_v1.20261029.517_linux-amd64.tar.gz"
      sha256 "eea633e0daf92ec22f629091b45de8a8f15614312fd3d9e0449ba630ff57bc83"
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
