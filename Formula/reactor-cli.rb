# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260925.28493"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28493/reactor-cli_v1.20260925.28493_darwin-arm64.tar.gz"
      sha256 "d8d7e02a952c8d3938933a521cea84d930b7c513f1e195d8b8e10fe934a4da41"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28493/reactor-cli_v1.20260925.28493_darwin-amd64.tar.gz"
      sha256 "6077458d262fa749d2b37d8e08dd0f00f144866a88d586f0902c4d6b880edd19"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28493/reactor-cli_v1.20260925.28493_linux-arm64.tar.gz"
      sha256 "a98083f6cf65b6f7afa69c6d23a109d6322e14662dce2abf01a4de01831bc57b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260925.28493/reactor-cli_v1.20260925.28493_linux-amd64.tar.gz"
      sha256 "3bac35b7eb6d4e2b9d55d35582178de88267ae61eaa6a3515167d6a4ceb7fe07"
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
