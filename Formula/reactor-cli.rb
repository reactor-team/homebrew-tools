# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.351"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.351/reactor-cli_v1.20261102.351_darwin-arm64.tar.gz"
      sha256 "d721b2b2138021a4e8a1fad2a5520f0720b17be70e28cec8f33f09a7f6ef8f72"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.351/reactor-cli_v1.20261102.351_darwin-amd64.tar.gz"
      sha256 "003d1f320474406e86f0439936509a4e44e4a3b5e56ec702c26127e3edb08d93"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.351/reactor-cli_v1.20261102.351_linux-arm64.tar.gz"
      sha256 "c0458f8ff8270e7e9b0456e910ae15215e0d5e47bc29aa196b5fe032519a0873"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.351/reactor-cli_v1.20261102.351_linux-amd64.tar.gz"
      sha256 "72fbb9a08da980fc0bbb7f7ea677be27eff769757e1f5b83d7502131526d0ff2"
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
