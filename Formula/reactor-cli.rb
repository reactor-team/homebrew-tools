# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.29"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.29/reactor-cli_v1.20261123.29_darwin-arm64.tar.gz"
      sha256 "300322441144bd0fea8745959a52c261cfed19503cd5da4d51cddc5c0ddd316c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.29/reactor-cli_v1.20261123.29_darwin-amd64.tar.gz"
      sha256 "ec3f14b0ddaef7c8d473e8f6d5d450e33748959232b36cd8d8f16c3380fb7281"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.29/reactor-cli_v1.20261123.29_linux-arm64.tar.gz"
      sha256 "ed0db9e167b98224bc3c28649c6c101cbae58d7c0112714ffb2eb3c1d1513692"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.29/reactor-cli_v1.20261123.29_linux-amd64.tar.gz"
      sha256 "765957f08f6afa84ea1b318fc91ed99dd72ffc7f490694e4cb17726b93b2da74"
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
