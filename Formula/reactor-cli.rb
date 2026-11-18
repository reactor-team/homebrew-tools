# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.37"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.37/reactor-cli_v1.20261118.37_darwin-arm64.tar.gz"
      sha256 "280ce3fa25c22e061bf8dcaac085765af1f25748c42dd6dd7e000a2187270302"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.37/reactor-cli_v1.20261118.37_darwin-amd64.tar.gz"
      sha256 "6c072aa2552a6a1825876166a2c382f6e4b45849dea2f286d4224a5ce229b294"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.37/reactor-cli_v1.20261118.37_linux-arm64.tar.gz"
      sha256 "a85c3cb91b3e0b2d618420ac4eb61fe623ce475a0b405a1de0d1a24a134c8fb2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.37/reactor-cli_v1.20261118.37_linux-amd64.tar.gz"
      sha256 "a4cd7d8f5c0aef2046a3d7aa44ffb4727f807f5c87b9504b8cdb2b00875fd997"
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
