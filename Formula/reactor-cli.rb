# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260709.18076"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18076/reactor-cli_v1.20260709.18076_darwin-arm64.tar.gz"
      sha256 "227096a263a73274a6a33bbdbd626bc3fd13a1c3391def3e1ea47fa27a5f6a8b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18076/reactor-cli_v1.20260709.18076_darwin-amd64.tar.gz"
      sha256 "54dab8b584bc44e28ec8425752d324a06d6fab45795b3bba561c134043a3d74f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18076/reactor-cli_v1.20260709.18076_linux-arm64.tar.gz"
      sha256 "b16b087b800561ee4fcb8b1e5d4d3d23cebf5697884a61772cdb4584c44ce306"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18076/reactor-cli_v1.20260709.18076_linux-amd64.tar.gz"
      sha256 "629f17a544a0138fb739042b0f8b95e80e2e8c8abeadff8fee93dbc05c56163d"
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
