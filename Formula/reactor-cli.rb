# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.42"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.42/reactor-cli_v1.20261123.42_darwin-arm64.tar.gz"
      sha256 "8251e6475eeb301dc6071d181919c74c839c3c8cb3f62122646a508e0143a3c1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.42/reactor-cli_v1.20261123.42_darwin-amd64.tar.gz"
      sha256 "1a1fee7f2b1ca9db1c2f374fbd9c46ac3d9dbeb184f3d97b86a60afdb9489bfa"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.42/reactor-cli_v1.20261123.42_linux-arm64.tar.gz"
      sha256 "4c5dff6dd070f3988a9f5ab9a9163bababcfdcb0bb6df7dd99043f72e5a21342"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.42/reactor-cli_v1.20261123.42_linux-amd64.tar.gz"
      sha256 "edf87962e03ef217a500fc292d38f9348080f65f3744b34a8b252872a64f4e8c"
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
