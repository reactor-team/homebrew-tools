# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.94"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.94/reactor-cli_v1.20261008.94_darwin-arm64.tar.gz"
      sha256 "cf3e62e655dff4cffaad095739392acdb43812e69e5e208963ea46c7eddf80bf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.94/reactor-cli_v1.20261008.94_darwin-amd64.tar.gz"
      sha256 "b6adda46d51b3358265d65795ac58ffc050966b61437481b40bb8ecf9b192c1c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.94/reactor-cli_v1.20261008.94_linux-arm64.tar.gz"
      sha256 "9bb39d82ab3476f2392640b50149851b535fed72010bfc554c445d787679b942"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.94/reactor-cli_v1.20261008.94_linux-amd64.tar.gz"
      sha256 "22409c28237b9b3573bc475eacb13d4b069aaece56d05116f329ea00bad77b19"
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
