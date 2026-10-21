# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.32"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.32/reactor-cli_v1.20261021.32_darwin-arm64.tar.gz"
      sha256 "e092413b7f40a1583dfab01872bf992afee5bafcf64e85f52bc51a4af125d607"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.32/reactor-cli_v1.20261021.32_darwin-amd64.tar.gz"
      sha256 "8213b6d4e3cccae29757329c2a95187aa6dee660ece039188100cafafd6156c2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.32/reactor-cli_v1.20261021.32_linux-arm64.tar.gz"
      sha256 "73a60ca545f9b2a6275b263a29fa6cca7882d093e93e3a6de3246c69d14a14a4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.32/reactor-cli_v1.20261021.32_linux-amd64.tar.gz"
      sha256 "2ae9c57172cc501882cfdf0f4d14eb10d1d433ee93ce138a6b05f03ea2246f63"
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
