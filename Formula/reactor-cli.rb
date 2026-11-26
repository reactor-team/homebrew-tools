# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261126.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.2/reactor-cli_v1.20261126.2_darwin-arm64.tar.gz"
      sha256 "3e8be98dca89242a7c82f2fa956ad5ca51e3a4efb6fe2824eab0a6635d314623"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.2/reactor-cli_v1.20261126.2_darwin-amd64.tar.gz"
      sha256 "9c060a69f285e17b03f4c03340d82a2474bf4b8430a290e877572226a6af96d6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.2/reactor-cli_v1.20261126.2_linux-arm64.tar.gz"
      sha256 "0aa85c3d8266753608dbcb2c0979b9cb77aa19f27980b12532d2ad9e51604d87"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.2/reactor-cli_v1.20261126.2_linux-amd64.tar.gz"
      sha256 "4fe812edc35f3f18c90c36832d5c0cab02bc48ccd6020897fbaaed69be44de20"
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
