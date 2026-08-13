# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260813.21768"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21768/reactor-cli_v1.20260813.21768_darwin-arm64.tar.gz"
      sha256 "75800eef9ebb2111e6e6f993d0946f53884b40dfb9a803fbf391f569f0fa8865"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21768/reactor-cli_v1.20260813.21768_darwin-amd64.tar.gz"
      sha256 "87074c37cbee4745fdd7a797df61c14634777d907d538cb5012a39b388f5a806"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21768/reactor-cli_v1.20260813.21768_linux-arm64.tar.gz"
      sha256 "90aad6e6342254810f9ebd6332972e6b720405d8c53e21800745f9a3fe977f1b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260813.21768/reactor-cli_v1.20260813.21768_linux-amd64.tar.gz"
      sha256 "c3780e3464ba4d547a0c2c57fc348ef469dc4ab3194d11a517138812b8e0f6c7"
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
