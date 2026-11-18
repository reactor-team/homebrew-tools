# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.9/reactor-cli_v1.20261118.9_darwin-arm64.tar.gz"
      sha256 "71c55d9259c007ba2298f15287be1646753705c98382c0f284918716b51b6b19"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.9/reactor-cli_v1.20261118.9_darwin-amd64.tar.gz"
      sha256 "5f5334b031164a6354838382ca8663ddabda99288135233d62ba94fce13afec9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.9/reactor-cli_v1.20261118.9_linux-arm64.tar.gz"
      sha256 "894d459d1c7259120956d08e6482bd5f783ee400e7893ccb744ec97d4431fc3f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.9/reactor-cli_v1.20261118.9_linux-amd64.tar.gz"
      sha256 "68394c8221cd82edd13af1e5ac1440608b1c1e615d8b120635e0009a06788706"
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
