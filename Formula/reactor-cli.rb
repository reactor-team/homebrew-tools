# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261126.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.5/reactor-cli_v1.20261126.5_darwin-arm64.tar.gz"
      sha256 "0b4c183da0653e336495d89b2bb88acd5286af09b422a208a715b2d14fb64c39"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.5/reactor-cli_v1.20261126.5_darwin-amd64.tar.gz"
      sha256 "0006bec1ed4f1f0be604b54eec0f59cf91d812a79dd2c68f147648a8c5b18895"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.5/reactor-cli_v1.20261126.5_linux-arm64.tar.gz"
      sha256 "5f1e4d81cc5ade9281321fcfdab48204c473214d99ab511b7aff670a1b6c5cfc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.5/reactor-cli_v1.20261126.5_linux-amd64.tar.gz"
      sha256 "f1698fac539793a10187cfc0f518da8f0f50db286dc1a9247212cc7acbe51944"
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
