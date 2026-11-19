# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.56"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.56/reactor-cli_v1.20261118.56_darwin-arm64.tar.gz"
      sha256 "ecc4574eee2f9e163a99b462fc90e24236483248fdd0bf087112bbd22955921a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.56/reactor-cli_v1.20261118.56_darwin-amd64.tar.gz"
      sha256 "1613f60d3cfdddfae8f93675cff97ca9c82e7abf344f9006593127f65a969973"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.56/reactor-cli_v1.20261118.56_linux-arm64.tar.gz"
      sha256 "c1ced7dce36f07c6c1a55fdd3ebfbe6dc30d4822bb95162a5e8fb7106906b965"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.56/reactor-cli_v1.20261118.56_linux-amd64.tar.gz"
      sha256 "13ec2995a0e5958bf896241ea723d94e7446c1e379a058e586cdabdadf6de64c"
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
