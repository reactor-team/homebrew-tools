# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261014.175"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.175/reactor-cli_v1.20261014.175_darwin-arm64.tar.gz"
      sha256 "33c8cfd4ecd5be2bcd80d0e0ea7b8837000a459d487adecae25a5d8b499178ab"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.175/reactor-cli_v1.20261014.175_darwin-amd64.tar.gz"
      sha256 "640ef6ab2500fc40bbe6c2f71d7f61f3a0f330bd15b008f6aa3a045b123b6b14"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.175/reactor-cli_v1.20261014.175_linux-arm64.tar.gz"
      sha256 "c548c972575b1263107972ea64a4d79490edd422cfbd9538e9549cc0a79ee9e5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261014.175/reactor-cli_v1.20261014.175_linux-amd64.tar.gz"
      sha256 "cd76b97abb4def655993de369a2f40089e2ba55c8e0ca394526a68ebfdbad246"
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
