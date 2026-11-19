# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.24"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.24/reactor-cli_v1.20261119.24_darwin-arm64.tar.gz"
      sha256 "dcd5c278be92f04d8324f62077d3ac927e0b2390b9aedfc085f926f7f4c0b34c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.24/reactor-cli_v1.20261119.24_darwin-amd64.tar.gz"
      sha256 "818efeae9cea5722e4ad03812f034875afe884625aa9a1828df7f1ca6cf9f106"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.24/reactor-cli_v1.20261119.24_linux-arm64.tar.gz"
      sha256 "4c8ce290de375154e41263983ed9be97a72164a12c006ae0ced31e0321eeb99c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.24/reactor-cli_v1.20261119.24_linux-amd64.tar.gz"
      sha256 "9cbeac8727128f5a60b69e2d3a59f3f6d566e7a3007648e4cccf204282640fae"
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
