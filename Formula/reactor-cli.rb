# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261016.32"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.32/reactor-cli_v1.20261016.32_darwin-arm64.tar.gz"
      sha256 "337f07f826e488366acb5cbff6e32806091637b52e4c115d7dbe817d829d90c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.32/reactor-cli_v1.20261016.32_darwin-amd64.tar.gz"
      sha256 "ab017e3a02ca8f78d6ec919d8205c616aa535d4ae66e8b96e5a92ec4707d9d3e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.32/reactor-cli_v1.20261016.32_linux-arm64.tar.gz"
      sha256 "f4838efb259f27c29cc2db0710c496a1da53dbfea33208254ef343d33f0caf15"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.32/reactor-cli_v1.20261016.32_linux-amd64.tar.gz"
      sha256 "7a2adac17801a77b848a713920a48c0c5d649d611c9bb85ea08a8afa9f5d0281"
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
