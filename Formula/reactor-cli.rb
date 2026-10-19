# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261019.94"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.94/reactor-cli_v1.20261019.94_darwin-arm64.tar.gz"
      sha256 "259b160399502fbf899a54733667366440045c4984c793bffa427452be62346d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.94/reactor-cli_v1.20261019.94_darwin-amd64.tar.gz"
      sha256 "c71c5458c61c79ba6b3535f39191204ef8f05ee547235a93ec66e8bddff6fe1f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.94/reactor-cli_v1.20261019.94_linux-arm64.tar.gz"
      sha256 "adeb16335045f9faeea07abddea90b35b49f33d3c66106fe2907f79138bcb690"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.94/reactor-cli_v1.20261019.94_linux-amd64.tar.gz"
      sha256 "fb1e36a56db31fd78ce88cf5e57910b2c1eb5f4b40afda4a72c8c6686b6c6303"
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
