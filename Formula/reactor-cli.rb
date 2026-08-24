# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260824.22964"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22964/reactor-cli_v1.20260824.22964_darwin-arm64.tar.gz"
      sha256 "9460a00c08a416beaa906165e2e81f66716e8a11eee8b68086f2c8258f4751b7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22964/reactor-cli_v1.20260824.22964_darwin-amd64.tar.gz"
      sha256 "258ba41faa02fc3c771d12f6a7e474f3ff522bf460eaec7ae2b38c490e170044"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22964/reactor-cli_v1.20260824.22964_linux-arm64.tar.gz"
      sha256 "59695f7c20b7d183f0362fd9da5636e94fe51fdcf88c5ab03cccb88bff0f54dc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22964/reactor-cli_v1.20260824.22964_linux-amd64.tar.gz"
      sha256 "08b7dda58ece0bd4bf124130ae4c036a539444204c242beef97d7355e8aad8d9"
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
