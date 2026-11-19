# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.26"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.26/reactor-cli_v1.20261119.26_darwin-arm64.tar.gz"
      sha256 "8c9aa67414b4307f845804df8e4d0e99079a49562f5bfb0c169826259809b8b2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.26/reactor-cli_v1.20261119.26_darwin-amd64.tar.gz"
      sha256 "870a2e6bb6b31f9b96db9722c08bb4b9d915f2405a1d9850136c0dfd5daf448b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.26/reactor-cli_v1.20261119.26_linux-arm64.tar.gz"
      sha256 "e78c20833908ef02749dff673d1a7875c8238ee1f6c6f3c41fd92ab200613f0d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.26/reactor-cli_v1.20261119.26_linux-amd64.tar.gz"
      sha256 "dc2a6f5147cf3d7aff909475207f4f36eef17fdc9c0d4fc1478fb5b03fe8972f"
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
