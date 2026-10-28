# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.61"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.61/reactor-cli_v1.20261028.61_darwin-arm64.tar.gz"
      sha256 "92a6a24dd538f47bda1e8984c3718fc3da324fd5278e5e8d094e606cc7863c4e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.61/reactor-cli_v1.20261028.61_darwin-amd64.tar.gz"
      sha256 "38f92da4d21cddad8f68f4d3e307561b164b4fbf7ce151b546bc58072e7fd075"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.61/reactor-cli_v1.20261028.61_linux-arm64.tar.gz"
      sha256 "1de61baded218e2ff1e527e4af65f792d57ac3bcfa3b5423c7e1e0bf092c06c1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.61/reactor-cli_v1.20261028.61_linux-amd64.tar.gz"
      sha256 "c6b1da5105d1adb5a84dcd7eb3bf641007d39919d029d47a5fd4cffe5b96a138"
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
