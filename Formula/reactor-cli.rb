# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.294"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.294/reactor-cli_v1.20261020.294_darwin-arm64.tar.gz"
      sha256 "12eb7eb727febdd112f3b4e82ff922b0647db267ab03b5fd51debd1830c95d46"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.294/reactor-cli_v1.20261020.294_darwin-amd64.tar.gz"
      sha256 "eb80242fede020e054f4508af11af78be74300b25badd253ee5f8af8cbb5df48"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.294/reactor-cli_v1.20261020.294_linux-arm64.tar.gz"
      sha256 "8173fbc3dc8ecd46200dfbe6e2d58fddf622cf1757950d0f00618d5cff48e0ac"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.294/reactor-cli_v1.20261020.294_linux-amd64.tar.gz"
      sha256 "935b4ed2837366e1ae549a394925fc0df34cc4253899edcef5ce8fe8fe8846a9"
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
