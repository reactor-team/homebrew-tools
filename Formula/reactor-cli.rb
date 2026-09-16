# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.27295"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27295/reactor-cli_v1.20260916.27295_darwin-arm64.tar.gz"
      sha256 "dc9ea21fa85d6310b0cf0c90933346cbee984fe6aa0f4fbbc71eaac4a540377a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27295/reactor-cli_v1.20260916.27295_darwin-amd64.tar.gz"
      sha256 "bdaa44fa7d01f191637e03dbf70b4fbf6af1785eba6f73943e9268331a6ca41e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27295/reactor-cli_v1.20260916.27295_linux-arm64.tar.gz"
      sha256 "54cf8cf9d0b7e9366f2ac073b60ec4e4095dba6542f6fed26285165c227fbf7f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27295/reactor-cli_v1.20260916.27295_linux-amd64.tar.gz"
      sha256 "19b9cf8c6152a5e3f828d69940f3ab333cb92ec006f989fb18347c9018052afa"
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
