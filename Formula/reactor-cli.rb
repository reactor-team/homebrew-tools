# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.280"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.280/reactor-cli_v1.20261104.280_darwin-arm64.tar.gz"
      sha256 "bd470523540637e10530a68230f85a4568b363de65e9edeb2652330bafa46449"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.280/reactor-cli_v1.20261104.280_darwin-amd64.tar.gz"
      sha256 "23396f7e1ca89b01b9324a854adf0b90cacb567cb682cba4771e520135963022"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.280/reactor-cli_v1.20261104.280_linux-arm64.tar.gz"
      sha256 "50a95d516b2ee502f23b16ee238ad5a900b237bf4075c45df891f87def04b8d5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.280/reactor-cli_v1.20261104.280_linux-amd64.tar.gz"
      sha256 "98d961315db581d6860dd17115151b86d894670ca876f74c6a3560778f597e48"
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
