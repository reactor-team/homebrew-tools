# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260820.22457"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22457/reactor-cli_v1.20260820.22457_darwin-arm64.tar.gz"
      sha256 "04fa0ac34e16009263f6b74acbb0bc75be090119f269322445d174af1e47fa9c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22457/reactor-cli_v1.20260820.22457_darwin-amd64.tar.gz"
      sha256 "3e867c201fdfb11660cdafe2ce43328db9d644d2559a9d034fa60ff4ba2d6a98"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22457/reactor-cli_v1.20260820.22457_linux-arm64.tar.gz"
      sha256 "276fdeb99ae479cae7f20aabaefbed5089a0e2bd92d526596904a816429146ec"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22457/reactor-cli_v1.20260820.22457_linux-amd64.tar.gz"
      sha256 "dfc215f102f4abf935ee3c6c413fc0df696f55cd90fe8d0ba04847818713456d"
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
