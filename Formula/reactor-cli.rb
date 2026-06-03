# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260603.15029"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260603.15029/reactor-cli_v1.20260603.15029_darwin-arm64.tar.gz"
      sha256 "76c60b4ce1247a74478de30109775e29b2eb0c32b64c86d3bace87a0e1adf894"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260603.15029/reactor-cli_v1.20260603.15029_darwin-amd64.tar.gz"
      sha256 "8648c21b9d55c99e1fbc938de99348ddcf81267a731cb70878a9f4c297837dec"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260603.15029/reactor-cli_v1.20260603.15029_linux-arm64.tar.gz"
      sha256 "5b57c39511f19793db0d41d95f6b6dd9b958f559d7fffb13cfef74245dcc89dc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260603.15029/reactor-cli_v1.20260603.15029_linux-amd64.tar.gz"
      sha256 "46a812981341665eb7fb357092ae458dc7db71863c1ee5884384763ea5249f39"
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
