# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261108.260"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.260/reactor-cli_v1.20261108.260_darwin-arm64.tar.gz"
      sha256 "89e7865bbb9d4af3d12219b57f05674853a9e3a7845a6875e1a6b254cec3bb75"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.260/reactor-cli_v1.20261108.260_darwin-amd64.tar.gz"
      sha256 "e7ea934dcc141e58fc70c6693861cc684e51ee47e28e6b085c94df8b39b02171"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.260/reactor-cli_v1.20261108.260_linux-arm64.tar.gz"
      sha256 "f299dee267e4a4df9db9df904954c2c8d992265bfa42c8c54e252107c66667aa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.260/reactor-cli_v1.20261108.260_linux-amd64.tar.gz"
      sha256 "fc46f0e424579a3fbd3060894e12467d918a3616c1e9e8731ac652d2ef51cb6d"
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
