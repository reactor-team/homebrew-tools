# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.41"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.41/reactor-cli_v1.20261123.41_darwin-arm64.tar.gz"
      sha256 "27632ff10f91d2fd6fb33ac225a28ad85664974a606b273ce7e95668c41db2a8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.41/reactor-cli_v1.20261123.41_darwin-amd64.tar.gz"
      sha256 "1863de85ee0033320432359938c4ccd8138d89d996b35f4942baefaf31b01f5c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.41/reactor-cli_v1.20261123.41_linux-arm64.tar.gz"
      sha256 "8a0445203d8abee88cc11cc868351caafaf6f13d62cdafe90e6e560eaab53916"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.41/reactor-cli_v1.20261123.41_linux-amd64.tar.gz"
      sha256 "5a86207d954a9d01a7da047639af79b1acceea59d937aac7ee82db54112599a7"
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
