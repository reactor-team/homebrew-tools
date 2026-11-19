# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.33"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.33/reactor-cli_v1.20261119.33_darwin-arm64.tar.gz"
      sha256 "917b1b09bcd559bad0c11d28aeab72780a99ef460b1cedf4ba3d78492fa97f1f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.33/reactor-cli_v1.20261119.33_darwin-amd64.tar.gz"
      sha256 "65aff6deae63f7319cdf890ae295e0f6e5369f24dab1ca51ebaed5cab88af3db"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.33/reactor-cli_v1.20261119.33_linux-arm64.tar.gz"
      sha256 "a8d83cd8129628709c4cb861aa787d8e45e926845e9d841e4322d98cc255c0e2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.33/reactor-cli_v1.20261119.33_linux-amd64.tar.gz"
      sha256 "2d9c2cfc0ed9ae4ed7ad49d35a54f7e91620d71da1b8f9bbe8e0e65f226aba8b"
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
