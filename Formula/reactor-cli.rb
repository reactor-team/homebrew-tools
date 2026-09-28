# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28869"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28869/reactor-cli_v1.20260928.28869_darwin-arm64.tar.gz"
      sha256 "ff024342fd22cae2b46b506c39009d7e0d461a9d209a7b24d049f3a3bf2f32cc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28869/reactor-cli_v1.20260928.28869_darwin-amd64.tar.gz"
      sha256 "49e155cc1e017336539b42fcece7c7d78f6940bb7847aba41d903c7d81abf299"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28869/reactor-cli_v1.20260928.28869_linux-arm64.tar.gz"
      sha256 "ada6a8976ada15c12107327157b0ac51ad68366f4bf02e8094fe019f92fe14e9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28869/reactor-cli_v1.20260928.28869_linux-amd64.tar.gz"
      sha256 "e34ef5ecce40712e761f8c0ea07230f2da97c6f6ed01d1abd3571d749b4bcf5d"
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
