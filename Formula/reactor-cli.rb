# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261103.368"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.368/reactor-cli_v1.20261103.368_darwin-arm64.tar.gz"
      sha256 "252fff44bcbee04901b1cc2b7657949fa222ad50d39d2d23af913b9163cf90ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.368/reactor-cli_v1.20261103.368_darwin-amd64.tar.gz"
      sha256 "b08361749d88ee5b76698729d2b567e93d043cd2a264e68ed03b0b098ab0a483"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.368/reactor-cli_v1.20261103.368_linux-arm64.tar.gz"
      sha256 "bb35392c372123eefce3bd1043c450f02cd4ba104118dfa277b63903586f129a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.368/reactor-cli_v1.20261103.368_linux-amd64.tar.gz"
      sha256 "bc847e48d067d16d9e116ebde1fa4c2ff586b1e044e6fc7146600303b8e09726"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
