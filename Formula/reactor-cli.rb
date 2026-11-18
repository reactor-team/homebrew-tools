# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.47"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.47/reactor-cli_v1.20261118.47_darwin-arm64.tar.gz"
      sha256 "aefc8fb4ec2666810350556ae59bd57416f24179dc5e52f067dbf47701533a3d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.47/reactor-cli_v1.20261118.47_darwin-amd64.tar.gz"
      sha256 "c1934bbbd1cbbff7b079e8e8f77ac70e2e863d5f772c597170727de0994ad5b8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.47/reactor-cli_v1.20261118.47_linux-arm64.tar.gz"
      sha256 "85eb438fbe76cc6cca06a25fbd5b54207c045ef602861476df808b455e4bf661"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.47/reactor-cli_v1.20261118.47_linux-amd64.tar.gz"
      sha256 "85ba97bdfdb53c66b31120d9ef301ef6d142cd57a117b3c861e4de318d44c942"
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
