# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.386"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.386/reactor-cli_v1.20261013.386_darwin-arm64.tar.gz"
      sha256 "7fceff552cb971ac8a04c2a99e5d822eb32359d17d92710967b3245114cb22a4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.386/reactor-cli_v1.20261013.386_darwin-amd64.tar.gz"
      sha256 "11d0c3513415fff903bc0eb58e6cac7cccb30d0650b18f36ccaf279c9a0fd24b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.386/reactor-cli_v1.20261013.386_linux-arm64.tar.gz"
      sha256 "bcdf244aa3752009f84b937eb6196634dfa0d45afd481b9b2015b49251c11196"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.386/reactor-cli_v1.20261013.386_linux-amd64.tar.gz"
      sha256 "605a23c74617abf5358d9e3b2ebe97aa7d47cf85c98ef85ab11acda947f1abe4"
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
