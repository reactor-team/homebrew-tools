# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.193"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.193/reactor-cli_v1.20261020.193_darwin-arm64.tar.gz"
      sha256 "c6cf053f810eb438b8bc95e238713f1b147a23f436e88311ae38e883bc2edba0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.193/reactor-cli_v1.20261020.193_darwin-amd64.tar.gz"
      sha256 "8f25ddf52bcd83556d364b78f73089c753f2686a3d08b25b9f1ebaf7f96ba19e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.193/reactor-cli_v1.20261020.193_linux-arm64.tar.gz"
      sha256 "94eee064f2451821dc6594610ffaaae76e0a3d7e709347556b9faafad8de10e2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.193/reactor-cli_v1.20261020.193_linux-amd64.tar.gz"
      sha256 "9bb20e8764e59af3fb575e0a9fd8d67e376ae6223e2c4302b3fb88bd5bed3afb"
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
