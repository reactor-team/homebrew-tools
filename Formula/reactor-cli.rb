# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.50"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.50/reactor-cli_v1.20261112.50_darwin-arm64.tar.gz"
      sha256 "cf7fac8a604b333ac407d95259904212b8074ef1718e2df9ad046c06c743f8f1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.50/reactor-cli_v1.20261112.50_darwin-amd64.tar.gz"
      sha256 "1f484a53dfca060e7f7705d57cf0127aaad3cfe7d0a2cffd6746fa920a05c551"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.50/reactor-cli_v1.20261112.50_linux-arm64.tar.gz"
      sha256 "f387d372272ceefc3913e52ee2466da69a5c0da47c2da4373c74bd86fe5d2dff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.50/reactor-cli_v1.20261112.50_linux-amd64.tar.gz"
      sha256 "7457e9ee64437e42e0d844f8c104f1e6d4cf5e16407d9a30ec71048a623796a7"
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
