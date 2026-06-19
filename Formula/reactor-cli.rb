# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260619.16363"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16363/reactor-cli_v1.20260619.16363_darwin-arm64.tar.gz"
      sha256 "70c6bef6cfa3e2b6496b7646f5352b60a6cecc3ae2e7f5505f6e194ca083eee1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16363/reactor-cli_v1.20260619.16363_darwin-amd64.tar.gz"
      sha256 "61503991de023d296392d2f74185a1c1bd0f796689793bf9bd87386bc04035e8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16363/reactor-cli_v1.20260619.16363_linux-arm64.tar.gz"
      sha256 "b8e22489b25475ce533fe712963023ad956abfe5021f068ab6db962e727686b0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16363/reactor-cli_v1.20260619.16363_linux-amd64.tar.gz"
      sha256 "090214e4bebac53b3017a4cd936c20fb29a48241fe14a4f3d9791f0070ef5fdc"
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
