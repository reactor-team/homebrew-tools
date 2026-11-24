# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261124.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.9/reactor-cli_v1.20261124.9_darwin-arm64.tar.gz"
      sha256 "fbb52e38403eba0c4193c82f56464724149355870e50d5777fe69b723ec0021f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.9/reactor-cli_v1.20261124.9_darwin-amd64.tar.gz"
      sha256 "eb2e28ada5b6dcd63f28416b2d051800d144422d83c0b782c3367c8adc1771b5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.9/reactor-cli_v1.20261124.9_linux-arm64.tar.gz"
      sha256 "26a80db97248b790caae96881a26c31b2c7cd55cc886ac0e4a893b0727c881a5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.9/reactor-cli_v1.20261124.9_linux-amd64.tar.gz"
      sha256 "addef6fe32c2c9f5df68b0410506466dc9485dee5a6340089bc1aac086d8ff9d"
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
