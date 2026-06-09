# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260609.15606"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15606/reactor-cli_v1.20260609.15606_darwin-arm64.tar.gz"
      sha256 "962af7611543b653e1f2500f0dc949c9f3be2374f08f1e9f69984e756eb91fb5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15606/reactor-cli_v1.20260609.15606_darwin-amd64.tar.gz"
      sha256 "9db0d5706fb2b10c31bd01e512f489a89399b255bcc096a193c3d425101ee057"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15606/reactor-cli_v1.20260609.15606_linux-arm64.tar.gz"
      sha256 "1c9564ba29ed8f2e628e2252031ba1c51b0943b44fbc92bb24272e438bab9728"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15606/reactor-cli_v1.20260609.15606_linux-amd64.tar.gz"
      sha256 "48431fe5816ae6b3a556fbad1cc19ae05d0bc3af04e7b83f0fe13bf53dca44a4"
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
