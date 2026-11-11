# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.195"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.195/reactor-cli_v1.20261111.195_darwin-arm64.tar.gz"
      sha256 "99b8182c701b8390a8d78e382c5d460ddbe995ce8c6f1e8dc5d7199908a9276f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.195/reactor-cli_v1.20261111.195_darwin-amd64.tar.gz"
      sha256 "d8618bdc96e742ee447b76465d93b4470d6f0e0ce5aeba798b9c98656931dbe0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.195/reactor-cli_v1.20261111.195_linux-arm64.tar.gz"
      sha256 "978f186d8e2df657cbfacec93d0a91320f2b384368be80e94cc11953858b7ee2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.195/reactor-cli_v1.20261111.195_linux-amd64.tar.gz"
      sha256 "16fafc44a0dc8f15e175661c8bf7475b583249fed0460d401fbbcdd4e7d8bc8e"
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
