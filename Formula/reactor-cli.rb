# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.166"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.166/reactor-cli_v1.20261005.166_darwin-arm64.tar.gz"
      sha256 "62dd91b249064f1566f32116a0e72ae47efd32842655df3e534ce89ffe7b315f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.166/reactor-cli_v1.20261005.166_darwin-amd64.tar.gz"
      sha256 "97c11c50a76e781bd7fe2825d07e0ca4b2feb10cd5ce3d8360803cb56821def5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.166/reactor-cli_v1.20261005.166_linux-arm64.tar.gz"
      sha256 "c44111475e0db8c85561d589b8b3134cc370ba83132deb14e0f8262607a5daa7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.166/reactor-cli_v1.20261005.166_linux-amd64.tar.gz"
      sha256 "5454e39f946856c8a67d4e60d610e96bd0b7ed02f386bf1c17a3c65d681033a4"
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
