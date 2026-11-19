# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.46"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.46/reactor-cli_v1.20261119.46_darwin-arm64.tar.gz"
      sha256 "6cf29eaf86dd5efa5b800b78ca1c6f44c33cb48c7288f9ccd24c43a479bb1c3c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.46/reactor-cli_v1.20261119.46_darwin-amd64.tar.gz"
      sha256 "f238d9e700272e20f093b249aa5e013496cacf2d01ebaedf3f52c788dc25a721"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.46/reactor-cli_v1.20261119.46_linux-arm64.tar.gz"
      sha256 "b443590bb1a8bce350762e156a7ff7d71803cc29595889500f3390c3a4f37783"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.46/reactor-cli_v1.20261119.46_linux-amd64.tar.gz"
      sha256 "73503bba9efcd0a9c73d54e93f9909aaa525c5f554f46c4b6a5c5472534db46c"
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
