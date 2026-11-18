# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.8"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.8/reactor-cli_v1.20261118.8_darwin-arm64.tar.gz"
      sha256 "67aff1b617e8895929a9f390136fb6ee2c3d53c9f0eba07b364a1ae6dec71c91"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.8/reactor-cli_v1.20261118.8_darwin-amd64.tar.gz"
      sha256 "3483819a7a30dfdc4e2774abc2ab868e73bc8442b4bf039442dd8bae93506ce7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.8/reactor-cli_v1.20261118.8_linux-arm64.tar.gz"
      sha256 "74f4808cb360f7b0a59ce9467aa5d4c704ae1e9701849ec8db8c0c87e410bdb2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.8/reactor-cli_v1.20261118.8_linux-amd64.tar.gz"
      sha256 "f3ad0c79184553757b25e9db7ad844d3e132ef4b0f731f0b55158c9989a0309c"
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
