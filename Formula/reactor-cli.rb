# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.14/reactor-cli_v1.20261119.14_darwin-arm64.tar.gz"
      sha256 "7bc22b8864b251c2311adf64cd4c05f2e6d95cb8d25e04c06e6f8040128d91f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.14/reactor-cli_v1.20261119.14_darwin-amd64.tar.gz"
      sha256 "aed21045b871cda6de6e935003dd256aa0004d071a91542cdadb537d108a0f0a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.14/reactor-cli_v1.20261119.14_linux-arm64.tar.gz"
      sha256 "11dec6b8bcaccfc837d56113486541b3a5dd1162e484499b09edf356cbc78ec2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.14/reactor-cli_v1.20261119.14_linux-amd64.tar.gz"
      sha256 "c2191e1e7e160f7b48a258555ff21de55b87f1404522310a6a129b7d5000a5ce"
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
