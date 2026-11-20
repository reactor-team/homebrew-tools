# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.14/reactor-cli_v1.20261120.14_darwin-arm64.tar.gz"
      sha256 "5addf3125038b9840ee07c8f4e951da51f866e30a2d379996df93867aed401d2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.14/reactor-cli_v1.20261120.14_darwin-amd64.tar.gz"
      sha256 "30b54b0b0034fe52389c32ad0cd68e9c2c53df2c330d919aa25ae8472c21a29c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.14/reactor-cli_v1.20261120.14_linux-arm64.tar.gz"
      sha256 "b634d2df2195121736a7ded21d288fbe3deb4cbe145ac492b541e101bdef37f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.14/reactor-cli_v1.20261120.14_linux-amd64.tar.gz"
      sha256 "3e434e2e7d14ee0304574e091362666564147b0fabd23f04e187acf78468e91d"
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
