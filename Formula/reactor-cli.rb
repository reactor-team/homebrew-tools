# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16884"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16884/reactor-cli_v1.20260627.16884_darwin-arm64.tar.gz"
      sha256 "614fe9d401220ae30803e67416b952b7280023db327b68df7cce75d315653bbe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16884/reactor-cli_v1.20260627.16884_darwin-amd64.tar.gz"
      sha256 "beb1f73b3feda11c02a71bc5406578531161019e33fbafc194722ff78f92c4d4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16884/reactor-cli_v1.20260627.16884_linux-arm64.tar.gz"
      sha256 "a453ac7148d2f3b36a8586ed18f7070ffb092106fb8d722ff4f48d40f8432513"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16884/reactor-cli_v1.20260627.16884_linux-amd64.tar.gz"
      sha256 "51dde098119410eae36b721fbfdcadbe107fc92dfa52dae3739618cb92dd61ed"
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
