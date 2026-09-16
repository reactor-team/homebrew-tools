# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.26983"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26983/reactor-cli_v1.20260916.26983_darwin-arm64.tar.gz"
      sha256 "cc53e9025726c54f55e03a2f070cd843b9831c32baa999b91436e4176c04b9df"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26983/reactor-cli_v1.20260916.26983_darwin-amd64.tar.gz"
      sha256 "05bf0ed82d054d5d8a5c59fa77d8cfeefb628a231205750057004607c8bc2dee"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26983/reactor-cli_v1.20260916.26983_linux-arm64.tar.gz"
      sha256 "02fc3e608b64f1f9e6627a206da54f6985f97f65371eafbe722ab4bf0c5adcea"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26983/reactor-cli_v1.20260916.26983_linux-amd64.tar.gz"
      sha256 "a8017651b9c990398c20481b8aa987c14d8244d2df0d52d80901f5371241cb05"
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
