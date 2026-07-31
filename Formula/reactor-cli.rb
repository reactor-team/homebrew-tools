# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260731.20397"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20397/reactor-cli_v1.20260731.20397_darwin-arm64.tar.gz"
      sha256 "d48fbc1b6a96fe201cae507d12c13f0aba28e0d639dd83cd7bd704156cffdc11"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20397/reactor-cli_v1.20260731.20397_darwin-amd64.tar.gz"
      sha256 "a21b0f757a693ea3089a24c0f2666d1c1e5539cb2eeaa8b70daca7b9eb2adb69"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20397/reactor-cli_v1.20260731.20397_linux-arm64.tar.gz"
      sha256 "52220d961e773702ba6b24147f9115c982563aa4b0205e5908ee8958669d133f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20397/reactor-cli_v1.20260731.20397_linux-amd64.tar.gz"
      sha256 "51931dbd37442cac9cacfbfc5ecbc8f4852ee91b4ec10430c8f8a0b9dccbc8f3"
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
