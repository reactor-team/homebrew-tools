# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.135"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.135/reactor-cli_v1.20261105.135_darwin-arm64.tar.gz"
      sha256 "486d858eff17c79287ff2766db497b0ed99f62b4ba1bd07815df1e97005b6a37"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.135/reactor-cli_v1.20261105.135_darwin-amd64.tar.gz"
      sha256 "38e73ea839b1c6b757327476f6f6a5a2e02ec1ba854fc6de7d83ab6fefd4608d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.135/reactor-cli_v1.20261105.135_linux-arm64.tar.gz"
      sha256 "1f6e7a5cae201597743c5603191fdba20fdbffcc343db9dee4b888d335a11a2b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.135/reactor-cli_v1.20261105.135_linux-amd64.tar.gz"
      sha256 "affeda227d3dc6589bee2fe5b279a9aceda9117a2d56e86ec8140ccdfecd90aa"
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
