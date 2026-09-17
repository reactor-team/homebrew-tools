# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260917.27484"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27484/reactor-cli_v1.20260917.27484_darwin-arm64.tar.gz"
      sha256 "3eec3cceef79546a15dcf7cc17126dc44ac5e7577c4bd46d7a174d4b888c87bf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27484/reactor-cli_v1.20260917.27484_darwin-amd64.tar.gz"
      sha256 "d7ac485eec255edb7f48ab7b948af42416e8fa934b908d2093a0d295de7f1eed"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27484/reactor-cli_v1.20260917.27484_linux-arm64.tar.gz"
      sha256 "f47fa554feb9f58301abbe4f46c7f44f365e8be8eed4fd1281be053dd47eec95"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27484/reactor-cli_v1.20260917.27484_linux-amd64.tar.gz"
      sha256 "27fe554964e682109728027ead5c5de8c497aa481f51900ae93fd0a52fcfa5f2"
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
