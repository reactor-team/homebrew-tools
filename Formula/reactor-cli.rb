# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260821.22645"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22645/reactor-cli_v1.20260821.22645_darwin-arm64.tar.gz"
      sha256 "0072ddd42df88972f0b8e95b73f044c386f4e8e9dbd07ee6b79ca137ef9adb4e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22645/reactor-cli_v1.20260821.22645_darwin-amd64.tar.gz"
      sha256 "12d6159d580391b788389ab49dee50dfff9b55994d5350487b21c8e3219434a5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22645/reactor-cli_v1.20260821.22645_linux-arm64.tar.gz"
      sha256 "122e2ba59a78cdbd844e7b1bf4325880f32fef65e62ea7e94461361325c81fd1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22645/reactor-cli_v1.20260821.22645_linux-amd64.tar.gz"
      sha256 "28ac30859943eb4948633e432ec273388d5aa37858f1ed7916cb1c4245f7d6bc"
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
