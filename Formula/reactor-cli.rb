# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260722.19006"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19006/reactor-cli_v1.20260722.19006_darwin-arm64.tar.gz"
      sha256 "b92ea9bfef29e5998ac655d4f33dc8bee57f7fa6e7d4adb0aa7b1da6f4f6f1f9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19006/reactor-cli_v1.20260722.19006_darwin-amd64.tar.gz"
      sha256 "3f45e5085947227020c15399aaded5c31604e67706185458c96e0c030dbdbb1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19006/reactor-cli_v1.20260722.19006_linux-arm64.tar.gz"
      sha256 "7390a5b5a2deeca534b6a1eabf5c718e840ccc0e89a6c10ef3c62b1afc7c9f22"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260722.19006/reactor-cli_v1.20260722.19006_linux-amd64.tar.gz"
      sha256 "18302918bbb40decdb88aa75d7e92492117d04b186d2a16454a40876ca639cf5"
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
