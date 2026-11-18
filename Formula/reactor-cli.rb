# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.38"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.38/reactor-cli_v1.20261118.38_darwin-arm64.tar.gz"
      sha256 "99d080cc69f787bee855f74513a92cb08f7869d70e5061738fd7a9a4b7c2e0c7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.38/reactor-cli_v1.20261118.38_darwin-amd64.tar.gz"
      sha256 "aec30eadb22c834c73f443133b24bc887d0e1a663ca523dda4f039f3892b9db6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.38/reactor-cli_v1.20261118.38_linux-arm64.tar.gz"
      sha256 "b8da93ec26e68ca6ee1386d52bfc1843be17e7cdeae128437fd45c0a1fbdf1d1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.38/reactor-cli_v1.20261118.38_linux-amd64.tar.gz"
      sha256 "077c4d59baf18b54acdbdc1b5cefd5c53d10655049cd2c6a0087255a31337a8a"
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
