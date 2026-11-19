# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.28"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.28/reactor-cli_v1.20261119.28_darwin-arm64.tar.gz"
      sha256 "f2902d2af3b14abcbdc9b74595874381539a8e5919607ac19ddcdff4f9c99a85"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.28/reactor-cli_v1.20261119.28_darwin-amd64.tar.gz"
      sha256 "1ee39fe28a66b62a80f94f393f3ac2857d3a524ef33a5ea012b6ec547f6ba248"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.28/reactor-cli_v1.20261119.28_linux-arm64.tar.gz"
      sha256 "a560dc1ebb3a17dbbabe1d28f3c1c8904052e9b807326862cff9ec2317ea3905"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.28/reactor-cli_v1.20261119.28_linux-amd64.tar.gz"
      sha256 "fe885af2eaf7ea8c5638269f4df8e9382e304c0be6a90fd5e71a6f5515b43ff1"
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
