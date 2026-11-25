# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261125.18"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.18/reactor-cli_v1.20261125.18_darwin-arm64.tar.gz"
      sha256 "f81a201109182c029b5abbc64cf92e28b78085f07e10765dfd5f2777a2e3047c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.18/reactor-cli_v1.20261125.18_darwin-amd64.tar.gz"
      sha256 "71807b2ff8d33a84c2b661e9ded37e85c1c18be80f6d1df61cf488a6b4d3d19e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.18/reactor-cli_v1.20261125.18_linux-arm64.tar.gz"
      sha256 "d3d7b693d220286038e4ec39ac35d33539ad5d51a4f4c88e03de911bcc292985"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.18/reactor-cli_v1.20261125.18_linux-amd64.tar.gz"
      sha256 "5c7bd0ebce0c31a1958262596a10e6be0bb110b1fe1b84f1e6392842e478c392"
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
