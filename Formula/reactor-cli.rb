# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.10"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.10/reactor-cli_v1.20261110.10_darwin-arm64.tar.gz"
      sha256 "a5589a8dba4539dbc6a0aa2b12928d28f7505a753362a323a651d629f4dddb24"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.10/reactor-cli_v1.20261110.10_darwin-amd64.tar.gz"
      sha256 "923bcafd215ae57e61cd35dcc8e9d4f9130ed9f4d16cd787b018ca9578597469"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.10/reactor-cli_v1.20261110.10_linux-arm64.tar.gz"
      sha256 "583ae5be0bf0924acd615d945b2da7f16b4e17862ce940266a973b5597897b2b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.10/reactor-cli_v1.20261110.10_linux-amd64.tar.gz"
      sha256 "e9dbb0e26e4ccfb421820fdee10cc9389e3fdf132092cdea58e1768416b54084"
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
