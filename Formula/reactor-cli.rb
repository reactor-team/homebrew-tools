# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261107.196"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.196/reactor-cli_v1.20261107.196_darwin-arm64.tar.gz"
      sha256 "68bc4d1c9b690b0e111ff23c6b753ab9ee40a1876b4f06347df071d8a969f0d7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.196/reactor-cli_v1.20261107.196_darwin-amd64.tar.gz"
      sha256 "02030488838010cb5e54c1789765e4e503e67c3ba7fcdba1ba50ea3f1cbe210d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.196/reactor-cli_v1.20261107.196_linux-arm64.tar.gz"
      sha256 "ddba70c14884378da892668a89f3c8a71f5dd497bd9b1886020ba5f8797db0c7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.196/reactor-cli_v1.20261107.196_linux-amd64.tar.gz"
      sha256 "6a1584d4d0f520e32b61903877f0d4cfeaf3a07cb3b63d7827ffe051eac0d146"
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
