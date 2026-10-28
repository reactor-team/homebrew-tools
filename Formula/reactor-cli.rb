# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.442"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.442/reactor-cli_v1.20261028.442_darwin-arm64.tar.gz"
      sha256 "d4f1bc74b31297e3a061f2102d9af97019d445cd351079a416f4671d798773ca"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.442/reactor-cli_v1.20261028.442_darwin-amd64.tar.gz"
      sha256 "e42761885cd96e404ebce290f1bb08d8ce1c42c37dc7945160669b88bb80b666"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.442/reactor-cli_v1.20261028.442_linux-arm64.tar.gz"
      sha256 "cd09eeec99982b54f868181b19058ff8e8f3f6e4a8699095b6160d4f721348a0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.442/reactor-cli_v1.20261028.442_linux-amd64.tar.gz"
      sha256 "54130ee87c08bb3fa05e029bfa2654c9ad3eb7fd0f92440a93dceef0ccb68752"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
