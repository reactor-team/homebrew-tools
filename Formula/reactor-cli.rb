# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260619.16377"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16377/reactor-cli_v1.20260619.16377_darwin-arm64.tar.gz"
      sha256 "7dfaea70f1d2d687d8c5cda298a5c20843dd892486428c42d5e4da0205d640d0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16377/reactor-cli_v1.20260619.16377_darwin-amd64.tar.gz"
      sha256 "dee69aa0c2b7d58ccf0db31dee24278b7005c4669f0a138857bf961041024868"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16377/reactor-cli_v1.20260619.16377_linux-arm64.tar.gz"
      sha256 "c49d031ac4ba586542069dca18a76678010559a47f8c8d3ec286aea18bec522a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16377/reactor-cli_v1.20260619.16377_linux-amd64.tar.gz"
      sha256 "e6238319bc60c062a1169269b823356c896d29893e5e047e837292085dc4c906"
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
