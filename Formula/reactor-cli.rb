# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.95"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.95/reactor-cli_v1.20261112.95_darwin-arm64.tar.gz"
      sha256 "683e474f4f8c7245d29b2de7e8ae1f4d1a3a52b68035f233408d9973f0ba249d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.95/reactor-cli_v1.20261112.95_darwin-amd64.tar.gz"
      sha256 "7dd947f64954fe6dc78c9b65299a1e2d37de407b9921a5d452b8ad0fd83ef401"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.95/reactor-cli_v1.20261112.95_linux-arm64.tar.gz"
      sha256 "4ed318c55fe296ac0852be6db1982ed0a80ac4b87ad22918be5eeee599f00b2d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.95/reactor-cli_v1.20261112.95_linux-amd64.tar.gz"
      sha256 "8a5e06b179c07ee7b04fac70b8ddd2961893cd0a483c571faab353f6941b4ae7"
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
