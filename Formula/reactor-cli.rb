# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.142"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.142/reactor-cli_v1.20260929.142_darwin-arm64.tar.gz"
      sha256 "159569f1d72fac83d559cb5dc6a723ee4c6f309ee9c5b38bb4853606782ff84c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.142/reactor-cli_v1.20260929.142_darwin-amd64.tar.gz"
      sha256 "862b1441ce05661f211093dba1ae29d487a5feff2d03f86971419e3fbbfc0f53"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.142/reactor-cli_v1.20260929.142_linux-arm64.tar.gz"
      sha256 "a8f5b55dde56c8166776c84efbf6d42f9d0a93471e8a31653ec2575dd5609892"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.142/reactor-cli_v1.20260929.142_linux-amd64.tar.gz"
      sha256 "0214e7989971eef2300e5df7806ba6a09cc27fdeb3f8f6d8bb8c38a13e4d9f82"
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
