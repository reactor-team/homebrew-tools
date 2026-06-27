# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16896"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16896/reactor-cli_v1.20260627.16896_darwin-arm64.tar.gz"
      sha256 "dcee41e2b17c068f6cce66cd3bc8f083c69b6592b9d66afaae815fdc3cef01cf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16896/reactor-cli_v1.20260627.16896_darwin-amd64.tar.gz"
      sha256 "77f1ac7fb34479d3b82d4e95128ef9b65f7626491b44f581b34197f4ffca0312"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16896/reactor-cli_v1.20260627.16896_linux-arm64.tar.gz"
      sha256 "7485484ea4af7b07c9f026f36f4f82ae53a9ab1bbcdf033472ef080dd148fd9f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16896/reactor-cli_v1.20260627.16896_linux-amd64.tar.gz"
      sha256 "402e0a6818dfac78799c9231b509c7ce74dcc962525528b9c36f6baff7cfebe8"
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
