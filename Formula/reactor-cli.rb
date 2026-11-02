# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.165"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.165/reactor-cli_v1.20261102.165_darwin-arm64.tar.gz"
      sha256 "11ecfcf654004651068a1159439dea57938cfa9ca15b26f787b91a5f8ef02e9a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.165/reactor-cli_v1.20261102.165_darwin-amd64.tar.gz"
      sha256 "11f876f7abb89d52e18aa175d8d1a6a1939aac23056209b8fd7538c36170c9b6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.165/reactor-cli_v1.20261102.165_linux-arm64.tar.gz"
      sha256 "3ab89737b9a914f364afa57cce1d30438f53627643b8ac29b91f728a3d3b6593"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.165/reactor-cli_v1.20261102.165_linux-amd64.tar.gz"
      sha256 "29b87ea8601ac96389f388377cd194dac156c2bb013b8a193954721dc01f1c6b"
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
