# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.9/reactor-cli_v1.20261120.9_darwin-arm64.tar.gz"
      sha256 "0431165a4fe952bb544429a45baf46cae6563c3673ec9afdd88af6fb7f74a6e2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.9/reactor-cli_v1.20261120.9_darwin-amd64.tar.gz"
      sha256 "0ae095879567c233ccbdc43314b0c37b3abc9581b54e8c550cf77de17ee5401f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.9/reactor-cli_v1.20261120.9_linux-arm64.tar.gz"
      sha256 "f9bbd8dd677fc239872cacde83bd5607a218733a1c0e09f31d580c19dc5dcb66"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.9/reactor-cli_v1.20261120.9_linux-amd64.tar.gz"
      sha256 "bfadf36bfe23900cbbc698b354b8119c1544aa22a8edc7139451794a731547bb"
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
