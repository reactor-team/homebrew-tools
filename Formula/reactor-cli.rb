# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.152"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.152/reactor-cli_v1.20261105.152_darwin-arm64.tar.gz"
      sha256 "d45248270fc5f1391822c9f3a7eb25a1872bd9b074fc4239ad90faf8eed1996d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.152/reactor-cli_v1.20261105.152_darwin-amd64.tar.gz"
      sha256 "7780441c4c88ea1d3b1ef4c492e1590be2a0af5ce36446e91f429aac73d34549"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.152/reactor-cli_v1.20261105.152_linux-arm64.tar.gz"
      sha256 "1a2dc3412bb08949160e330baa171acd07e90822ce7493288095a72f953f6267"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.152/reactor-cli_v1.20261105.152_linux-amd64.tar.gz"
      sha256 "0804c74db962576571896518c954200e036d4d06c66848f8a86de50dc8ca10e8"
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
