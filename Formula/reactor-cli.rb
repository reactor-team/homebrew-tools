# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261126.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.4/reactor-cli_v1.20261126.4_darwin-arm64.tar.gz"
      sha256 "d366282729eff8d497393f8938c15416cdc84061e194bba391601ee38dfa66d2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.4/reactor-cli_v1.20261126.4_darwin-amd64.tar.gz"
      sha256 "66348a1fc308b8f7a3c2bea866a529c51c090fade286bbde6a144c775d80f010"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.4/reactor-cli_v1.20261126.4_linux-arm64.tar.gz"
      sha256 "3bd0f23ef7bfc61328f1cb8e677119932573eaf65790530d3d1f54d396705cc1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.4/reactor-cli_v1.20261126.4_linux-amd64.tar.gz"
      sha256 "50c6eb905322283a1d87eee8e9a28c9151b89de5cbe1c145896b61bf8e27dfd6"
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
