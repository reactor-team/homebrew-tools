# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.105"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.105/reactor-cli_v1.20261111.105_darwin-arm64.tar.gz"
      sha256 "4615d57aa144281bd9e96dfd896e94074ad3870bcebf483ce4297aa0dac7dd46"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.105/reactor-cli_v1.20261111.105_darwin-amd64.tar.gz"
      sha256 "27bf16e8790bddccfb215eb81de773ea5c870eccc9e6cc1e03033dd53ce97e96"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.105/reactor-cli_v1.20261111.105_linux-arm64.tar.gz"
      sha256 "08c6f2f61514319706c93409d21999034f961013ddd64a0d69e7548021563a9d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.105/reactor-cli_v1.20261111.105_linux-amd64.tar.gz"
      sha256 "f8b39824fd4471a28d908276c8372c8a511f4f79740f6e0ee116f29ef60874cb"
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
