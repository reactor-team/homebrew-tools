# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.450"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.450/reactor-cli_v1.20261112.450_darwin-arm64.tar.gz"
      sha256 "05a9701adea91c0860bfa67d13b14ec865a654f29bc7660d852802f2bf20faab"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.450/reactor-cli_v1.20261112.450_darwin-amd64.tar.gz"
      sha256 "79a2dd22f0b6468e38ed5742f7ad6bc2fe8e3ef6d5e10b8c5ced50ef0281ed8a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.450/reactor-cli_v1.20261112.450_linux-arm64.tar.gz"
      sha256 "fe0c486d671ff677f08265de105dc72426a63018929291334da35d6ca0c6cad4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.450/reactor-cli_v1.20261112.450_linux-amd64.tar.gz"
      sha256 "d6500be9d11250126ac00d4198ce6f1d9087e30d6a14cba57b75e7fe10760b58"
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
