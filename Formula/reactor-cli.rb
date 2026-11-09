# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.482"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.482/reactor-cli_v1.20261109.482_darwin-arm64.tar.gz"
      sha256 "2e2486242a8f8d196d0eaed0cb1906babf17528eb5790277b0b601f21893bfd5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.482/reactor-cli_v1.20261109.482_darwin-amd64.tar.gz"
      sha256 "b08bd2b1e3b4eb2fd2d21af6b80641db51dce0609253dce82006860adec1f77b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.482/reactor-cli_v1.20261109.482_linux-arm64.tar.gz"
      sha256 "24921612b21d0c4f102a9559536830b9cbecc7bcc3eeb09cac526489d3fc9632"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.482/reactor-cli_v1.20261109.482_linux-amd64.tar.gz"
      sha256 "5bb6e295384ca194dde7067627af4946589a593ad2c668f1ae656b5c4b6425f7"
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
