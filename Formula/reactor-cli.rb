# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.224"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.224/reactor-cli_v1.20261008.224_darwin-arm64.tar.gz"
      sha256 "f1adecd661944b8606fe023c106ce5a6f4a079769c7bb2136ad0fb9009eedb21"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.224/reactor-cli_v1.20261008.224_darwin-amd64.tar.gz"
      sha256 "d7fac1c1d50262900209624a25545b10a1f52c5a2ee462396e202e7224f0452b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.224/reactor-cli_v1.20261008.224_linux-arm64.tar.gz"
      sha256 "cb00cc05d88ab0187d61220730f2826374fc1bed3221b16b6eab3f02f532f934"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.224/reactor-cli_v1.20261008.224_linux-amd64.tar.gz"
      sha256 "657edb635861ad379b08fa213e13f5dee20b1f0b4efcd0d4d01a4aa094af73ba"
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
