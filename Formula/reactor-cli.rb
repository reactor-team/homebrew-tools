# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.114"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.114/reactor-cli_v1.20261009.114_darwin-arm64.tar.gz"
      sha256 "3709cd105c15f7e1dfbc3e13ac4050ed7f4492ef64a04efea6cfea7ff4c6ba29"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.114/reactor-cli_v1.20261009.114_darwin-amd64.tar.gz"
      sha256 "c101be8ea1591519212d3c43b8fca955bf05324dc7de767a3bee3ef7785a799a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.114/reactor-cli_v1.20261009.114_linux-arm64.tar.gz"
      sha256 "e42d31b5e42f674e4f3c5c30acb7e25a7a609e4773d172d94bdb6071aa7cda51"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.114/reactor-cli_v1.20261009.114_linux-amd64.tar.gz"
      sha256 "36db7ce03aa8d9cbbe02bfe893f16f3073c16f83f937a2a298399d2fd98fb233"
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
