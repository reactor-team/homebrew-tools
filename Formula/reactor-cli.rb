# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260619.16374"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16374/reactor-cli_v1.20260619.16374_darwin-arm64.tar.gz"
      sha256 "4cde78120b4fd9a816d1becfe814861a3e655d430937aefbef94f0cb65eb22c0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16374/reactor-cli_v1.20260619.16374_darwin-amd64.tar.gz"
      sha256 "4c387345fd6e1c953550b5b08ff4d26d25c2521e22ceceb538fa26fef10aa578"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16374/reactor-cli_v1.20260619.16374_linux-arm64.tar.gz"
      sha256 "ecaedde2f7a294fedb5f79364c8c50a3103cc8c955426912f3a2f5754288c85e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16374/reactor-cli_v1.20260619.16374_linux-amd64.tar.gz"
      sha256 "ef4056dc335feb09c000be31030fef458db5f56a85944f5f16f1e8b49d06299c"
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
