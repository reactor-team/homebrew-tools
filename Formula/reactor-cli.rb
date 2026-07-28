# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260728.19812"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19812/reactor-cli_v1.20260728.19812_darwin-arm64.tar.gz"
      sha256 "8d4d9fe86bdd2b907f08de01701a00fbb95f1d7066096a85f09ad5eb5439e443"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19812/reactor-cli_v1.20260728.19812_darwin-amd64.tar.gz"
      sha256 "988041604b4d6455c186cd7b42884dc260720075e2024a0f13699b10e14a9715"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19812/reactor-cli_v1.20260728.19812_linux-arm64.tar.gz"
      sha256 "6c90d34b65f24eaac0d74eeed4663a7625f6ce007f234a6cf94065f1bf0fe030"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19812/reactor-cli_v1.20260728.19812_linux-amd64.tar.gz"
      sha256 "f002abccc3f21ac6d2f5677572986dae204c85e3f70fa3368b80ff8de6fe678e"
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
