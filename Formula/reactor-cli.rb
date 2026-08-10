# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260810.21413"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21413/reactor-cli_v1.20260810.21413_darwin-arm64.tar.gz"
      sha256 "70f0e6122b7878f7077fc34ed5525e545b63c18004851eb670485cf0195586a2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21413/reactor-cli_v1.20260810.21413_darwin-amd64.tar.gz"
      sha256 "7fcebc9843b30c4312dcbf3daa14cf0959f9ae0fbc0d53209b1fa482f37f887a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21413/reactor-cli_v1.20260810.21413_linux-arm64.tar.gz"
      sha256 "c0cd2d7c8b4b32966f46a9ea6e0b004f3eab297946e4b06f976930a0dafcba5d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21413/reactor-cli_v1.20260810.21413_linux-amd64.tar.gz"
      sha256 "1834a24fb396c262fb73fcc5414883f9febc080a276c05e3ef78ca43f6abf9e3"
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
