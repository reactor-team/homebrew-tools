# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.336"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.336/reactor-cli_v1.20261028.336_darwin-arm64.tar.gz"
      sha256 "d442491f5d9d238819ba77c0a78722836e64f243b9d2786ac40ed7be75c66885"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.336/reactor-cli_v1.20261028.336_darwin-amd64.tar.gz"
      sha256 "18d073add559d2f3ddc80320a19982c6a227e6ead1eacfd6e1765b9b41616830"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.336/reactor-cli_v1.20261028.336_linux-arm64.tar.gz"
      sha256 "07344025acc9127611ff4daa4e1f151069fb8b5b0341824a790a3b7610326a61"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.336/reactor-cli_v1.20261028.336_linux-amd64.tar.gz"
      sha256 "482e29689d3c7a1fe30a26d7a098818184af80c3a7ad9347ade66f59fc86c134"
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
