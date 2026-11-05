# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.327"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.327/reactor-cli_v1.20261105.327_darwin-arm64.tar.gz"
      sha256 "10b153eeeae4fdbd95297906ecebafa17eb08c643d0c750c33962949c5403b99"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.327/reactor-cli_v1.20261105.327_darwin-amd64.tar.gz"
      sha256 "31bfcfb863a35c6c43003981ef126558debaf44b3a59c19339715ffa13728835"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.327/reactor-cli_v1.20261105.327_linux-arm64.tar.gz"
      sha256 "408706e238bc43f1eb9f2265184e643bd97401b0d1d899747114962fa68fabf7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.327/reactor-cli_v1.20261105.327_linux-amd64.tar.gz"
      sha256 "07285915c91c0623901d30c63a12581b04eddfb8c7d98df2bdcefdd6e53edb81"
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
