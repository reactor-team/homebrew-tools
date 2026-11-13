# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261113.18"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.18/reactor-cli_v1.20261113.18_darwin-arm64.tar.gz"
      sha256 "42487341ee0d19cc5943b13e65b620df055a7050cc9e5ce1fc13c9b5b4d66601"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.18/reactor-cli_v1.20261113.18_darwin-amd64.tar.gz"
      sha256 "215004a2603e50da250a13834e7c91bbbe15b78d7cd04ff4aa0df8b90162aec3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.18/reactor-cli_v1.20261113.18_linux-arm64.tar.gz"
      sha256 "296f0dce0c485aecc308bdbbcdff707229e17f6ea68fc6229b4b6ef1ecb68262"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.18/reactor-cli_v1.20261113.18_linux-amd64.tar.gz"
      sha256 "c3f5c545afd0c585204ede121e8915cfed12aa4623f615c66cd265aa32af7dbe"
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
