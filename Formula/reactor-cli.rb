# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.34"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.34/reactor-cli_v1.20261119.34_darwin-arm64.tar.gz"
      sha256 "1f3c0850c71f337f28dfa7ecd3fb73cf79a1dc97768238b1e5aa9c1fa27ee4e2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.34/reactor-cli_v1.20261119.34_darwin-amd64.tar.gz"
      sha256 "6ea567274dbe6d0c3989cbc904d100e35c3cfe6f947b427964e219d60ca13373"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.34/reactor-cli_v1.20261119.34_linux-arm64.tar.gz"
      sha256 "c226b931558e194afd9ce4c282851642c9775d4850c5dc5e273c1d84da24546f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.34/reactor-cli_v1.20261119.34_linux-amd64.tar.gz"
      sha256 "7d68cd63b9bd160dce5458acd3748163001271752a8f3ef36c25fb1a9332f59f"
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
