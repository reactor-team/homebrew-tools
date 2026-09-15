# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260915.26778"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26778/reactor-cli_v1.20260915.26778_darwin-arm64.tar.gz"
      sha256 "6bce13b1a18142a4db54e3b753629bfdc074d737856736d435b0d611e8f88754"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26778/reactor-cli_v1.20260915.26778_darwin-amd64.tar.gz"
      sha256 "0b54fca3ea06dd8762ac41d3b9761af66f5323dc1bc093373eab80cc1b40ec2e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26778/reactor-cli_v1.20260915.26778_linux-arm64.tar.gz"
      sha256 "ab9e643fbbc6ec09504267ee55b770d74a9d1896fc52c69e502195e8777a0df6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26778/reactor-cli_v1.20260915.26778_linux-amd64.tar.gz"
      sha256 "29e536f6e3d7da4a053ec2db3c4585575eb8bfa933cf199b15e32ab640003a8b"
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
