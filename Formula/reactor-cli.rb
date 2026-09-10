# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260910.25591"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25591/reactor-cli_v1.20260910.25591_darwin-arm64.tar.gz"
      sha256 "61cef18b3571608f5fe32a9312bfa8d3c35034c5f0fbd8964e1c3e0da2d98319"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25591/reactor-cli_v1.20260910.25591_darwin-amd64.tar.gz"
      sha256 "340c5be3f5bf89d267fdd78c5a160a4fce37e26dcdca4904cb42c0519257f582"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25591/reactor-cli_v1.20260910.25591_linux-arm64.tar.gz"
      sha256 "915de95176a65828dc06272f6fde5da89c63077af67eb608c51de94be27f82a4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25591/reactor-cli_v1.20260910.25591_linux-amd64.tar.gz"
      sha256 "bf54add6a30ba53cf6b46964215cdf3b5bb0c9f594de84bdaa34f7cd4a6a0ac6"
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
