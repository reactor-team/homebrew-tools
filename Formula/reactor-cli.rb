# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261126.13"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.13/reactor-cli_v1.20261126.13_darwin-arm64.tar.gz"
      sha256 "8e39e0744001db73b16773a71478a0177c0f64478ef622f62b295dc0204dfc40"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.13/reactor-cli_v1.20261126.13_darwin-amd64.tar.gz"
      sha256 "e60a7f96185b4e4973ce1c411b8e0b0442f4501e957056f17f551e8c138817b6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.13/reactor-cli_v1.20261126.13_linux-arm64.tar.gz"
      sha256 "62af77a9c14a2e1b0404dbac101944d2abd6743841de557b0150a735d51291d5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.13/reactor-cli_v1.20261126.13_linux-amd64.tar.gz"
      sha256 "5d754294cdc77191660a1c2d28a95d33bc51e773ee36384a9707737ea1582760"
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
