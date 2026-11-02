# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.118"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.118/reactor-cli_v1.20261102.118_darwin-arm64.tar.gz"
      sha256 "1bf9c5963e1989eb77af51efa6f5a0eccdd380273fcbaade46ab2998ddd26c4c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.118/reactor-cli_v1.20261102.118_darwin-amd64.tar.gz"
      sha256 "eb464a0d1d9b9f9c73d4d3675cba601b83c3534170ba5fb3eeea40649820913e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.118/reactor-cli_v1.20261102.118_linux-arm64.tar.gz"
      sha256 "39ee1805e1576138fa808c345c186cf98ac8d527e56c9fcfa4f576191c33eba8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.118/reactor-cli_v1.20261102.118_linux-amd64.tar.gz"
      sha256 "e355390c5e05db9967d1e83ca489c81b04fcb2e2994c9eaa6136460273ec3a5a"
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
