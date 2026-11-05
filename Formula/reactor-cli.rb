# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.272"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.272/reactor-cli_v1.20261105.272_darwin-arm64.tar.gz"
      sha256 "572151345a71b89b4df8f31d853f3259e9bfd016f532ee9dd83e8fffb25739f6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.272/reactor-cli_v1.20261105.272_darwin-amd64.tar.gz"
      sha256 "e73e2adcfdf301674322d6e3cf957d2b2ac6ed1f39ee478c9161d8ac85047f6b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.272/reactor-cli_v1.20261105.272_linux-arm64.tar.gz"
      sha256 "a344bd29c987f1ecb80e22536665cfd58b53170ef96d72b827f48fca80216641"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.272/reactor-cli_v1.20261105.272_linux-amd64.tar.gz"
      sha256 "148b6ca2e104fe2a59a7b66895d636eb5cdc2288c80808efdb937c9c173f769c"
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
