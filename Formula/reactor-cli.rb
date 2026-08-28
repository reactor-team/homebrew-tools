# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260828.23760"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23760/reactor-cli_v1.20260828.23760_darwin-arm64.tar.gz"
      sha256 "1853efcfd3e342acbd07f7cb855004e188c2257b9929782ee6e5588bf3ff189c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23760/reactor-cli_v1.20260828.23760_darwin-amd64.tar.gz"
      sha256 "0f2cf7b5de04657dfb5aaa5a8b129c9ba02c5e513066efb1d07b223e217bb1ea"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23760/reactor-cli_v1.20260828.23760_linux-arm64.tar.gz"
      sha256 "2d4552b1ec4b207ea10068e379996f7a53419735df7a2605ca24fddac37c0a48"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23760/reactor-cli_v1.20260828.23760_linux-amd64.tar.gz"
      sha256 "a12046df90ec8112a511ab4226da6dd60e53758ff56aefc0997a95bb7f09a8ad"
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
