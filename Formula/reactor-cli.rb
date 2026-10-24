# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.17"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.17/reactor-cli_v1.20261024.17_darwin-arm64.tar.gz"
      sha256 "2b19a036c2526f488a8f435cb9854e29b298203ceef40c0f25f95a578c0b7217"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.17/reactor-cli_v1.20261024.17_darwin-amd64.tar.gz"
      sha256 "de735568ce62f9272c150b2bd5c972df6ec5ac55e59d8cb223aa5c2def1a639a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.17/reactor-cli_v1.20261024.17_linux-arm64.tar.gz"
      sha256 "07fb590401edf611971f4307faa9b9568e78fac648515bb470b6e7c7aee9c562"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.17/reactor-cli_v1.20261024.17_linux-amd64.tar.gz"
      sha256 "d4d3698f2ec5fc3578c66c6c5a85399fc77866d1d4c9a1fd020f2be1b9a2a476"
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
