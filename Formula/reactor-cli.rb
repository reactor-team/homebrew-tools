# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.190"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.190/reactor-cli_v1.20260929.190_darwin-arm64.tar.gz"
      sha256 "3d7b3bed8c462e7ca03a477a9af19a5c1d406b588d2c8c8e6b5adb41bf3ed826"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.190/reactor-cli_v1.20260929.190_darwin-amd64.tar.gz"
      sha256 "e8327db7afc174b779da8e3c3a99ab8d4a4b252e6f7418a752a7840bd71de717"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.190/reactor-cli_v1.20260929.190_linux-arm64.tar.gz"
      sha256 "2a46cb7e8146f55ea550e135e0d96e6e042aaf7745e83cb4a3285ad304dedce6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.190/reactor-cli_v1.20260929.190_linux-amd64.tar.gz"
      sha256 "e3ffc7db04b431d2435a819b33d655162b86c49ec784beb7796b210e545864a0"
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
