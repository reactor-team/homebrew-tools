# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261113.6"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.6/reactor-cli_v1.20261113.6_darwin-arm64.tar.gz"
      sha256 "6eeea024bfcadf7b6a12ae313dcad9b3909d88a1472b2d7422704d2f364cde2d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.6/reactor-cli_v1.20261113.6_darwin-amd64.tar.gz"
      sha256 "1e77169b7ef9bbe8c9d5e95b204dfc316f2fb78157e33033cec7b3db1fecf9c1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.6/reactor-cli_v1.20261113.6_linux-arm64.tar.gz"
      sha256 "c1f87002e428d6fa74b2c91e9012f001ede45da2bd2ec48c25b117c0ae4d73b8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.6/reactor-cli_v1.20261113.6_linux-amd64.tar.gz"
      sha256 "ce623053dee687f8689994e7fcf5dfaccd7bd0c3cffdda035bf5e90ba1e15ce5"
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
