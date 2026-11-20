# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.3/reactor-cli_v1.20261120.3_darwin-arm64.tar.gz"
      sha256 "1a4d6988aec053d8593312cbc946c288205b314780299ddbb1d6780550c909c5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.3/reactor-cli_v1.20261120.3_darwin-amd64.tar.gz"
      sha256 "811a840973a0c8b57928538866f24e30b91819334af30e1dbeb1a7d502577375"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.3/reactor-cli_v1.20261120.3_linux-arm64.tar.gz"
      sha256 "d03d76c8851468f28572145e9085d39c22782f48d687111c7b04fc6c6e88b86e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.3/reactor-cli_v1.20261120.3_linux-amd64.tar.gz"
      sha256 "f1b35bd63786180652eeaf8f697dc4625d5273e6c537966e2403f0f885d155b2"
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
