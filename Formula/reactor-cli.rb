# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260825.23210"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23210/reactor-cli_v1.20260825.23210_darwin-arm64.tar.gz"
      sha256 "3432952eb05ca830ab3252855fabd91ba909cf2bd219f18cba14028ce31bef10"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23210/reactor-cli_v1.20260825.23210_darwin-amd64.tar.gz"
      sha256 "127f5e51bf799ea5a2b5f1c0abe99b8bb64e84cb378e92b07f83e96a7d5d223a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23210/reactor-cli_v1.20260825.23210_linux-arm64.tar.gz"
      sha256 "2a9ce0d4b9f576fdfa9e15347f75703dcca531394399a6f448bff7dba5f931b1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23210/reactor-cli_v1.20260825.23210_linux-amd64.tar.gz"
      sha256 "08f6e85f40f23a2316297300e245c79b1aa8575302c76015ba3352e5675531ec"
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
