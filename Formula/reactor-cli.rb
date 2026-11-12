# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.259"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.259/reactor-cli_v1.20261112.259_darwin-arm64.tar.gz"
      sha256 "9da5f8e317fbd41788cf2a6882f44d8f0501b28de78831d5de92b884f9bffad6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.259/reactor-cli_v1.20261112.259_darwin-amd64.tar.gz"
      sha256 "c8afffd77a5d4cb978df260db3c60089b6e0a1bdcdecf8c769d2c2f535357dd3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.259/reactor-cli_v1.20261112.259_linux-arm64.tar.gz"
      sha256 "dfcb9e5d0e009c174e7017f71f6b681c9155413fe44441434656ba697433ff77"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.259/reactor-cli_v1.20261112.259_linux-amd64.tar.gz"
      sha256 "eecd893786ab1daedd5dbf61212489edda43161fcaaba126f6208488ddb2a05f"
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
