# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261125.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.14/reactor-cli_v1.20261125.14_darwin-arm64.tar.gz"
      sha256 "25b7f271c4acbcdee5ff23ea0487d8e07740d9cac29115ba15d1344e0e73fd53"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.14/reactor-cli_v1.20261125.14_darwin-amd64.tar.gz"
      sha256 "ee096cae702bd808b0eb2b0848343d990597c6f271c975d147a72aa351862f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.14/reactor-cli_v1.20261125.14_linux-arm64.tar.gz"
      sha256 "11a257557cf1e82985bac46f08ce38be9289f6dc9fad1016566450bac69e6e13"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.14/reactor-cli_v1.20261125.14_linux-amd64.tar.gz"
      sha256 "cf6d0c6f7cce6f82b889bf2362ca7bb677a1c42bb77ca5af4fa0f7abebb543bd"
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
