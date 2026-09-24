# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260924.28386"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28386/reactor-cli_v1.20260924.28386_darwin-arm64.tar.gz"
      sha256 "d9c84b11868d59c9c4b4c2b3e25fe04c74ec004212163bd6e60e495d17cf59f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28386/reactor-cli_v1.20260924.28386_darwin-amd64.tar.gz"
      sha256 "d74306db7674ae6957ed11d0f6df62a3a448866d92565913e504cdbf826e5ba6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28386/reactor-cli_v1.20260924.28386_linux-arm64.tar.gz"
      sha256 "7b878139ff19b4149557fbeacfb67e126d06d860471d5d12c0140f502c8f1cb9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28386/reactor-cli_v1.20260924.28386_linux-amd64.tar.gz"
      sha256 "df11fa421c9ff76be69faa9129192d42f8152b5e284a9614bdd7b9ec3c417f74"
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
