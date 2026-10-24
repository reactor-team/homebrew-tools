# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.146"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.146/reactor-cli_v1.20261024.146_darwin-arm64.tar.gz"
      sha256 "93d1f75597dd74612892bb008e0c8c0aa43835fced7bd19a527467fb0bd9aa5e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.146/reactor-cli_v1.20261024.146_darwin-amd64.tar.gz"
      sha256 "5e11b817ef2086747e39eac1fd7935770cab6500e6429ecccc4e2c51f4c3b216"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.146/reactor-cli_v1.20261024.146_linux-arm64.tar.gz"
      sha256 "00bdfacbfd2fc06a8dcae398c15bb3bc75241000d42c974c5330b835ad99532e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.146/reactor-cli_v1.20261024.146_linux-amd64.tar.gz"
      sha256 "56a58849599de8f815cf5d450c80e084a497b240cd6631b7df192858744e7e64"
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
