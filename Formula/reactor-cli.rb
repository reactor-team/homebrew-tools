# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261117.25"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.25/reactor-cli_v1.20261117.25_darwin-arm64.tar.gz"
      sha256 "09c79c4ef9ca45cdae40fb27c32d41603df644d1d22b51ab416c1c498b378e77"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.25/reactor-cli_v1.20261117.25_darwin-amd64.tar.gz"
      sha256 "fec98a9728406be366bb139a099e015bab5cc9a93d51b95eb42166b0399fa928"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.25/reactor-cli_v1.20261117.25_linux-arm64.tar.gz"
      sha256 "dca4e61da41bc2b9a0519cfda3d04a98e6940923a8a9bd13f16578ba7bd73d21"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.25/reactor-cli_v1.20261117.25_linux-amd64.tar.gz"
      sha256 "0ea119fc9aa3658213dfb5ccc98f01abb5a69df4c5a4665c9fc70775c776f620"
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
