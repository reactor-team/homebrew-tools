# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.59"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.59/reactor-cli_v1.20261112.59_darwin-arm64.tar.gz"
      sha256 "894486102e84b0697439efb634b09604a3bc6a7fc43a7b3ded26353f57d0c00b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.59/reactor-cli_v1.20261112.59_darwin-amd64.tar.gz"
      sha256 "16d7411a1b5816866b0b540a110c545e3195533653e05ebc2e0c9f3ca7c59302"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.59/reactor-cli_v1.20261112.59_linux-arm64.tar.gz"
      sha256 "6af16547820e66186d27ca2fc27d9eae42af97b04ac751a2bea4069880172123"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.59/reactor-cli_v1.20261112.59_linux-amd64.tar.gz"
      sha256 "29ffdf2ad1c03baa58d55e0d24332f83d561b09366f35ae7b138675582827482"
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
