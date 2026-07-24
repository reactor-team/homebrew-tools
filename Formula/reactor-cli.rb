# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260724.19182"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19182/reactor-cli_v1.20260724.19182_darwin-arm64.tar.gz"
      sha256 "eeb528e20aade83d01f023acd9fe02b3bf1017fc2beca7ae42fd3298c227f44b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19182/reactor-cli_v1.20260724.19182_darwin-amd64.tar.gz"
      sha256 "8f78846541f73620b4165efa9f475f7dc821d5d471ee1eaf5c57c653f12452e2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19182/reactor-cli_v1.20260724.19182_linux-arm64.tar.gz"
      sha256 "3b5bd09d16531265c8f83e75395ccac9e76c49474b4ba10382f7323b8c44e632"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19182/reactor-cli_v1.20260724.19182_linux-amd64.tar.gz"
      sha256 "91a81f605eec0d2717e0912f54b4179484d57533f07205dbce947589266547ef"
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
