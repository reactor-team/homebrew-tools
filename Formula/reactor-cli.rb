# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.2/reactor-cli_v1.20261118.2_darwin-arm64.tar.gz"
      sha256 "8d33ad6a75e34567e08fe52e85537d2ac9dc2cae401eeaded5a703c8e931c477"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.2/reactor-cli_v1.20261118.2_darwin-amd64.tar.gz"
      sha256 "503a2e3268532930a0ed0ce4a2618c04f88e321cc191c8396e17f444d8e0b183"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.2/reactor-cli_v1.20261118.2_linux-arm64.tar.gz"
      sha256 "379afc53e615a2143ca4bbff7194a047f1d6284749c98348bf18dbc65c9799dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.2/reactor-cli_v1.20261118.2_linux-amd64.tar.gz"
      sha256 "84b20c5af9487a019f44ca6f83e7507388e064af265ea6e2ef44fe25ab369757"
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
