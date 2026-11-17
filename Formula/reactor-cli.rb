# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261117.37"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.37/reactor-cli_v1.20261117.37_darwin-arm64.tar.gz"
      sha256 "d28a1b0100d88a461b08ead96a6d7597ccb67466fd035964cf36b8d8622e210c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.37/reactor-cli_v1.20261117.37_darwin-amd64.tar.gz"
      sha256 "1f3b548bf77e404cb3fc54272fc849f6453c02055404d72fdb5a8d5430212204"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.37/reactor-cli_v1.20261117.37_linux-arm64.tar.gz"
      sha256 "9ebec05691f1a457a3c20e6534dd94176f388a4cfa0556b25307572b5ab85aff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.37/reactor-cli_v1.20261117.37_linux-amd64.tar.gz"
      sha256 "de7d71d772a3f912074c6942229d0bc652f7e6ece9a7827eeb357edd1b4411a5"
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
