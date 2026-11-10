# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.121"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.121/reactor-cli_v1.20261110.121_darwin-arm64.tar.gz"
      sha256 "5571b10ced05d8427a5786d29024ae28c3deff4dbcc75ec73a0ee5df070371b0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.121/reactor-cli_v1.20261110.121_darwin-amd64.tar.gz"
      sha256 "79b8f7be1a1c9d3856b9b7aa7e039101ff2faefe9145b77913f3f18bb0c084fc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.121/reactor-cli_v1.20261110.121_linux-arm64.tar.gz"
      sha256 "158ffacebaaa286e5007afba0811977c09ec548e1cdf996e338830c8c34823cd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.121/reactor-cli_v1.20261110.121_linux-amd64.tar.gz"
      sha256 "e8026ebc0db83429fd02881b516b7b60300f345a8d37c11a1daef65c70c1221f"
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
