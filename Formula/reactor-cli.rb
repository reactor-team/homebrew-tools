# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.3/reactor-cli_v1.20261118.3_darwin-arm64.tar.gz"
      sha256 "aeace27b9edf0c9e55570769ebd2b7f2b62c2f22b5b8dafae86da9fd9ae150b1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.3/reactor-cli_v1.20261118.3_darwin-amd64.tar.gz"
      sha256 "1dfa140c91633233d0f05e0e2d6f579e31b4077366676accd90e306d15bede31"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.3/reactor-cli_v1.20261118.3_linux-arm64.tar.gz"
      sha256 "c9844c200f0c60a2f411f1676972773df8f14729984c0651258f47a7432b221c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.3/reactor-cli_v1.20261118.3_linux-amd64.tar.gz"
      sha256 "cf3672742e67e0984c2f65505c8fcd1394bc1b524551f9e77cd5d3ff3269036e"
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
