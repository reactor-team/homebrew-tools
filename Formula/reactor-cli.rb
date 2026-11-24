# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.39"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.39/reactor-cli_v1.20261123.39_darwin-arm64.tar.gz"
      sha256 "4e565084b515a83e8337a3ba39585f004b270800808f22947cfd0bd2ba648ba6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.39/reactor-cli_v1.20261123.39_darwin-amd64.tar.gz"
      sha256 "9c9887c085509c8193ee5cd31c6ffae154d2ea182cef0450a715cae73982bfb9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.39/reactor-cli_v1.20261123.39_linux-arm64.tar.gz"
      sha256 "093f7543cfd8641f8e4dddc9896a1730ee37f7dceb2c787e373bdeff6d5596fa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.39/reactor-cli_v1.20261123.39_linux-amd64.tar.gz"
      sha256 "4f1fc01e8403e417254a6016649956c442c2cd480bb89c0632374e24baf0b3ff"
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
