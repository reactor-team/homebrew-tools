# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260610.15618"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15618/reactor-cli_v1.20260610.15618_darwin-arm64.tar.gz"
      sha256 "abea5f9b737819c1c4434eb304f62ccc9831f92afccbe9fff5aa5f48db26fa68"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15618/reactor-cli_v1.20260610.15618_darwin-amd64.tar.gz"
      sha256 "eb5f2ed81294348deca7c979c9cd5e374b87c7e8a3c169ad1c19d5720994a1dc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15618/reactor-cli_v1.20260610.15618_linux-arm64.tar.gz"
      sha256 "fd7c6a1b9ab3a1529aa53f92ffe6c8b02550e11949886b07f097dfa19feee6ce"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260610.15618/reactor-cli_v1.20260610.15618_linux-amd64.tar.gz"
      sha256 "12c861918c90b8e52674aa2fe5205d3db1ec80ba4723a07a9d8acc738b07d5fe"
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
