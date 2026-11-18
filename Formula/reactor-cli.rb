# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.10"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.10/reactor-cli_v1.20261118.10_darwin-arm64.tar.gz"
      sha256 "b804565e343e2034a4c54b5d436cc6d4da4292abdbc23eebc422dfbdc11576d7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.10/reactor-cli_v1.20261118.10_darwin-amd64.tar.gz"
      sha256 "16fb2abd3e394d715f83cac4a947bbe0d453ccf97128e2491393993dbc56c826"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.10/reactor-cli_v1.20261118.10_linux-arm64.tar.gz"
      sha256 "b175d91d334f3f9ff2b9fa6b376120f37a5f41e95868a4fc1d01e43ccd87e538"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.10/reactor-cli_v1.20261118.10_linux-amd64.tar.gz"
      sha256 "688cc7bf1791a45dc6b71606df8192f6d294f3c6fd3fb41b726aa2575849b47c"
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
