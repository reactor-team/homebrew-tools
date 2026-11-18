# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.14/reactor-cli_v1.20261118.14_darwin-arm64.tar.gz"
      sha256 "3b0362fb1d8b1f74f916109089573cc680e4fbf6728100dcac865ecbd741f237"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.14/reactor-cli_v1.20261118.14_darwin-amd64.tar.gz"
      sha256 "d63d2f325a305dd897f6547cd58fca59e1be1be67d3a41eda865ee95b72bfc48"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.14/reactor-cli_v1.20261118.14_linux-arm64.tar.gz"
      sha256 "ad6ad7b480a2a604493b1a15a9d8c3d974a00117c948b13a38afac587585a2d5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.14/reactor-cli_v1.20261118.14_linux-amd64.tar.gz"
      sha256 "89806eb8dfdceabb17d1ffca515e0b4ab5023515346c0e158943198056d35726"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
