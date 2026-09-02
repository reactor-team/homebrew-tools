# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260902.24460"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24460/reactor-cli_v1.20260902.24460_darwin-arm64.tar.gz"
      sha256 "61a98ebcda1f152c9427d9c4f9bb4af01b17725437aff0fa86043ead769f7268"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24460/reactor-cli_v1.20260902.24460_darwin-amd64.tar.gz"
      sha256 "83953432f7e1aeef7a98951f21ec31fd19a79c22ce90f4feedb9efdfd72ff0ba"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24460/reactor-cli_v1.20260902.24460_linux-arm64.tar.gz"
      sha256 "2fb5d33eecf9206a6efeb5435b27136f27e779ef6023ba5242fca6a0cce21fc0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24460/reactor-cli_v1.20260902.24460_linux-amd64.tar.gz"
      sha256 "f64ef24d68ae2834f2ddc29b395a8f886f06d0afdd17b0787232e2ab644b6dd2"
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
