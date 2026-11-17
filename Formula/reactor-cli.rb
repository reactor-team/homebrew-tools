# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261117.35"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.35/reactor-cli_v1.20261117.35_darwin-arm64.tar.gz"
      sha256 "868bde2b5a2ee4e8868130480fe4ea583c72209cc6567d1cd70abf1933eb5da2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.35/reactor-cli_v1.20261117.35_darwin-amd64.tar.gz"
      sha256 "a646c912e34ee02b9fa77e5a116028a6fd3bbd13b2e6806305d718f4ebb5febf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.35/reactor-cli_v1.20261117.35_linux-arm64.tar.gz"
      sha256 "4dc728946e75f7fc298d0aea44c1417d316611d8d39299e3cd0a42aa43c90a79"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.35/reactor-cli_v1.20261117.35_linux-amd64.tar.gz"
      sha256 "179da22d2936481dc8b7372c2753a196dd8b9cb27ee3415a02e616da0673630a"
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
