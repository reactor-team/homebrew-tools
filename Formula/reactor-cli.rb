# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261117.27"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.27/reactor-cli_v1.20261117.27_darwin-arm64.tar.gz"
      sha256 "ed0c32d8b72864ccaa60524a7e13d762f718f1a1eccc999cf13a197d9bdcef03"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.27/reactor-cli_v1.20261117.27_darwin-amd64.tar.gz"
      sha256 "b60f4df761448dc5df7c1ea450414d7c2ca8119d5b34e8bcfaaa16029cdbc1f1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.27/reactor-cli_v1.20261117.27_linux-arm64.tar.gz"
      sha256 "b10e47205f469a9b27e29ed3c7e3021c775d3a99c2fe9c19439c201af5f02a14"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.27/reactor-cli_v1.20261117.27_linux-amd64.tar.gz"
      sha256 "07438d478f72ef89469ecb0b3e34f09ee7da57a237cf1f4f6b90e3cea0c909ae"
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
