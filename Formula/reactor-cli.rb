# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261126.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.9/reactor-cli_v1.20261126.9_darwin-arm64.tar.gz"
      sha256 "7f25efea051d3889298cc8b3786b9be56e348e40c6df029eb00df82da2b7b6b0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.9/reactor-cli_v1.20261126.9_darwin-amd64.tar.gz"
      sha256 "e264e9c7ab262ddde01009b8b76a998f584c1d3afb8c571aa2c3a42f189daf4b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.9/reactor-cli_v1.20261126.9_linux-arm64.tar.gz"
      sha256 "8c3f15c8d69f034f60d8a18481c9b4ad0614038dc90c523cc8f00340420d7eb0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.9/reactor-cli_v1.20261126.9_linux-amd64.tar.gz"
      sha256 "985b9bebb56ad00d0d91463b931c88ad045c7e8ddd5f53f6fcd2763f6110cfca"
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
