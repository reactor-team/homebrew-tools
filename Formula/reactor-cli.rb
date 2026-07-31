# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260731.20367"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20367/reactor-cli_v1.20260731.20367_darwin-arm64.tar.gz"
      sha256 "8696dff94e6ffb3919e76b4c1f7df909f1dc166114d4c5b77973711c2042b886"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20367/reactor-cli_v1.20260731.20367_darwin-amd64.tar.gz"
      sha256 "e2d4fd08d04f7eb23f5dac5ca756af79c6665ba74c12689e65a6711bed1e06eb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20367/reactor-cli_v1.20260731.20367_linux-arm64.tar.gz"
      sha256 "bf2bba5b621e09a11b2eb3d043ad5bf30720e58814bccc5fff6b6c75fc1163d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20367/reactor-cli_v1.20260731.20367_linux-amd64.tar.gz"
      sha256 "879c6d60b4043c444cc55ffbf431240c56170c34c08f30e7d50b5ac3c43bc792"
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
