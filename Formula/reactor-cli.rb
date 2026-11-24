# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261124.13"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.13/reactor-cli_v1.20261124.13_darwin-arm64.tar.gz"
      sha256 "15868f6a419d09f918c82b1ebf8f1826a113fbeb81f0b6c7d8b01a60085a7a67"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.13/reactor-cli_v1.20261124.13_darwin-amd64.tar.gz"
      sha256 "2c3471df221e65a9d5876e2ea0d8c228ca9023301f37db4820e098e3f9637a97"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.13/reactor-cli_v1.20261124.13_linux-arm64.tar.gz"
      sha256 "5b5c11cd1d95bfbc6b8793d0dadb5709689ac60bfaebb273101598fbd8dc4f62"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.13/reactor-cli_v1.20261124.13_linux-amd64.tar.gz"
      sha256 "d836a24cbfc59c5cf544cb7c06a87f1b1ff606ac72bb1bb51d919bef3d524718"
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
