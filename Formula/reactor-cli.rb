# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.93"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.93/reactor-cli_v1.20261105.93_darwin-arm64.tar.gz"
      sha256 "c931fc8bd8ae665fc1dec67ed2375f9b170cae19b2850c2b4b6117849dd62a74"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.93/reactor-cli_v1.20261105.93_darwin-amd64.tar.gz"
      sha256 "7d7a5ae940e1047ba7f8fd1c17048aad78a153ed964d8bf7d81b4ed3ad17c2e6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.93/reactor-cli_v1.20261105.93_linux-arm64.tar.gz"
      sha256 "92464574cd6874bc16189c31cc19b36c23c15da13577660bba1b45ae266562bb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.93/reactor-cli_v1.20261105.93_linux-amd64.tar.gz"
      sha256 "dd5c8da43d04c79fce22bdc0564490119c734ddd177f5715316210491198c6da"
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
