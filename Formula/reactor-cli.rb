# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.13"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.13/reactor-cli_v1.20261110.13_darwin-arm64.tar.gz"
      sha256 "ba47dfbe5715a96691daa13620abeee93bec41a3ae9accd2940f73d0c8cd3208"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.13/reactor-cli_v1.20261110.13_darwin-amd64.tar.gz"
      sha256 "6778a6690288110f26522304b9fe0e003d176702a99207ae1d1e6ca9128db133"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.13/reactor-cli_v1.20261110.13_linux-arm64.tar.gz"
      sha256 "b9832fc36e3815361aba7e8234020fb4d688739c5db9364eebb7ce36f13ba0c6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.13/reactor-cli_v1.20261110.13_linux-amd64.tar.gz"
      sha256 "be8fd863f8b4bc504e237b90a73a860a205aaaf329478d09ed8d7324c21917fc"
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
