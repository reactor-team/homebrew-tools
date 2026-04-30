# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260430.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260430.4/reactor-cli_v1.20260430.4_darwin-arm64.tar.gz"
      sha256 "08a828023dda93b8b7a1d1c18d6eee48aa0ffd241900a754372024d8bb9734f9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260430.4/reactor-cli_v1.20260430.4_darwin-amd64.tar.gz"
      sha256 "765d2e77a8dc37141cd398821a386e2aacaf356a917bba19aa74274675bf6e2d"
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
