# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.361"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.361/reactor-cli_v1.20261111.361_darwin-arm64.tar.gz"
      sha256 "11499fb90871d2e2d9d3046276aa3dba70313d5d570efddbf004fc165459a1da"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.361/reactor-cli_v1.20261111.361_darwin-amd64.tar.gz"
      sha256 "5cfb7473e36716897b190073add260f47a27c09540e2b1103960c75380fd1832"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.361/reactor-cli_v1.20261111.361_linux-arm64.tar.gz"
      sha256 "e70dc7b8878d3ded24e9da9716f820300d4d1a31a85acd819e64ab3d7204d774"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.361/reactor-cli_v1.20261111.361_linux-amd64.tar.gz"
      sha256 "b1501fbb9801c460fe14f140ed6cd7242974be5256dfad7b9ac231890170332e"
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
