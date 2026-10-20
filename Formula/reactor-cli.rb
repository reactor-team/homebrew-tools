# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.273"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.273/reactor-cli_v1.20261020.273_darwin-arm64.tar.gz"
      sha256 "309089d9081b0260e82e6293e1960cb250094599c06f8209fd33caa5e7e7cf86"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.273/reactor-cli_v1.20261020.273_darwin-amd64.tar.gz"
      sha256 "506199590390610e92057797be1b8db56ee222bf0b9338a2a56f5d8b7cd699a4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.273/reactor-cli_v1.20261020.273_linux-arm64.tar.gz"
      sha256 "9165c3088edf15ed575206b740397429b655501ca3375c9b2299465d1748e37b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.273/reactor-cli_v1.20261020.273_linux-amd64.tar.gz"
      sha256 "9298afe9e0265632bf079f28181c2cc9ae63056a44d3d0f411b10114f8d2d84c"
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
