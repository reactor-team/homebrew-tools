# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.32"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.32/reactor-cli_v1.20261119.32_darwin-arm64.tar.gz"
      sha256 "995aa9de3745bcd0926824e560aaf0bbfaf6ce60fb2985ce235193ba7ebd88ac"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.32/reactor-cli_v1.20261119.32_darwin-amd64.tar.gz"
      sha256 "7565abcd2e4eeee5659aa7984816f2b8541cd96090fc3510badcda30d7687add"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.32/reactor-cli_v1.20261119.32_linux-arm64.tar.gz"
      sha256 "f39c02fead0042e3870abc3696bcdbc4dc782c2abde7a953f74368333d77b726"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.32/reactor-cli_v1.20261119.32_linux-amd64.tar.gz"
      sha256 "6a34ab68d7b71eb704717a191a8de9436c7074eed53adfeeef02c333d416ac93"
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
