# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.15/reactor-cli_v1.20261118.15_darwin-arm64.tar.gz"
      sha256 "7439f70ff6c485c67fc9617deb24e74349047574c56293b2bdb1f7468165d99c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.15/reactor-cli_v1.20261118.15_darwin-amd64.tar.gz"
      sha256 "f499ba235ba1799d3faabcdd61a747ff7317b4ffc3be3d2fa5b4c3c3a8e6efa1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.15/reactor-cli_v1.20261118.15_linux-arm64.tar.gz"
      sha256 "0348afc533c8e7dc496983f278995d1924654a120722bcdde5d0035df0e90dc2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.15/reactor-cli_v1.20261118.15_linux-amd64.tar.gz"
      sha256 "6d4d4065208678b88f37e8b12e917a5fddd7a3b9d2d5f7fcaef26acabd66a6ed"
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
