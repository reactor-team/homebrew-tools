# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.16"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.16/reactor-cli_v1.20261021.16_darwin-arm64.tar.gz"
      sha256 "299f686233d6c021ce89c0b696b966fe5d5ab48c8be7c490bdcda898054e564c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.16/reactor-cli_v1.20261021.16_darwin-amd64.tar.gz"
      sha256 "2c9ddd8dbdcbc8d6a0e7d2c2612797ced3975b5e929b04fdc055802e18dcca2c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.16/reactor-cli_v1.20261021.16_linux-arm64.tar.gz"
      sha256 "60000abe3790ae6dfb321289b1bf475a4a81337802a2877b6b6b202448036a7f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.16/reactor-cli_v1.20261021.16_linux-amd64.tar.gz"
      sha256 "6d7a422a4110f3611ab25747e6f6d89e94d5f44ee1c92b5798c13c9dc3ee934a"
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
