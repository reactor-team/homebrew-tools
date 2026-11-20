# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261120.16"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.16/reactor-cli_v1.20261120.16_darwin-arm64.tar.gz"
      sha256 "af9113c0966737985c6a043245c24b4dc4c01f6f5aacd1f2e73dc4ccc04a9aa1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.16/reactor-cli_v1.20261120.16_darwin-amd64.tar.gz"
      sha256 "dc6046cf2c222c101ffaa5b582f940b065ef53d16e2d309324a66e3c31601ff7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.16/reactor-cli_v1.20261120.16_linux-arm64.tar.gz"
      sha256 "f1f73c2138166b7a9fa63062ce4a06c97ccaa2cbd4d935de4e73743d8d2d80f0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261120.16/reactor-cli_v1.20261120.16_linux-amd64.tar.gz"
      sha256 "6ea4f557628a3954c97e6c3d635d266dd9e8e2c170d188f13c635b48010152a6"
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
