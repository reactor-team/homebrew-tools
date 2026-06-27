# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16828"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16828/reactor-cli_v1.20260627.16828_darwin-arm64.tar.gz"
      sha256 "46cd5513565811d99c27622a951f830fb2109b840e6388684d74918a82662072"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16828/reactor-cli_v1.20260627.16828_darwin-amd64.tar.gz"
      sha256 "9ffe44f3160d5c7e800ba0794baa3fab876002e7cfd3195ccb7f620cc33a6fb9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16828/reactor-cli_v1.20260627.16828_linux-arm64.tar.gz"
      sha256 "f4c00ba247a98254a0ba28ab7bd98a13caa086b845dfd0a9bfd079819471cd24"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16828/reactor-cli_v1.20260627.16828_linux-amd64.tar.gz"
      sha256 "0a9c565bd7dee44cbfa68b65ec9cfda34404977f5cabfcb0f03dc42b9b006f49"
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
