# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261124.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.4/reactor-cli_v1.20261124.4_darwin-arm64.tar.gz"
      sha256 "4791ff0d7f90337a67383f2adec3b02a446323aa596de24009ebde3aa239e21f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.4/reactor-cli_v1.20261124.4_darwin-amd64.tar.gz"
      sha256 "46551927cdac1694194b94e3d4e93bc741381f968e137589cd7e3a30271c63ec"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.4/reactor-cli_v1.20261124.4_linux-arm64.tar.gz"
      sha256 "bf48463ab3cbdef9732725db84422d703391e5b1fb2390d1deeb1d5dc94e12e5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.4/reactor-cli_v1.20261124.4_linux-amd64.tar.gz"
      sha256 "b96a1ceb5578c140301ba839818ccd2f7132a9853e095d15a8fbf3a142db1019"
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
