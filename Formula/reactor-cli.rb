# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.40"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.40/reactor-cli_v1.20261119.40_darwin-arm64.tar.gz"
      sha256 "c9b788e90d1d870c04e1b9af0908ae46c887af16c580d6d5fa2b8321b3809371"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.40/reactor-cli_v1.20261119.40_darwin-amd64.tar.gz"
      sha256 "4c8bbd23c4a341d632c8e75580547e00be2a8a44546650ae601eccad424d8a70"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.40/reactor-cli_v1.20261119.40_linux-arm64.tar.gz"
      sha256 "968a5c7c32691921e14932102cae4fdc2acf685c9be12ac229870dd598d1a989"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.40/reactor-cli_v1.20261119.40_linux-amd64.tar.gz"
      sha256 "05f294800c93368a5dba516080a535ae08ba12e25759ce285b0a305f7f715251"
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
