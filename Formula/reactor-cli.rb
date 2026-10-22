# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261022.23"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.23/reactor-cli_v1.20261022.23_darwin-arm64.tar.gz"
      sha256 "f488464ed47cd3301d33f72e6a07d84998049f1e47e5993dff56afae5f550165"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.23/reactor-cli_v1.20261022.23_darwin-amd64.tar.gz"
      sha256 "c54c62017b14db4971f6a743cc583ea5360c4fa92e3fe18d092fe4de555e44bf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.23/reactor-cli_v1.20261022.23_linux-arm64.tar.gz"
      sha256 "8b3f6e08516f75156b8880f9b9f8e67a5335ffbe4d3f4c0ee69b56956e27fcd9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.23/reactor-cli_v1.20261022.23_linux-amd64.tar.gz"
      sha256 "69e6751f19e8210d49202a4fc7c89caf6f19dd0542e4bfba298c1131bd4f45a5"
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
