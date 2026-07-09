# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260709.18059"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18059/reactor-cli_v1.20260709.18059_darwin-arm64.tar.gz"
      sha256 "649df3fa1ff52915286c4700d501f41efed079731dbe9e92c4f1845d01df83a4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18059/reactor-cli_v1.20260709.18059_darwin-amd64.tar.gz"
      sha256 "c131c36ec780be86f65a54cda376800dcec89bc2e8d9a6e15c5968ce818f75d5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18059/reactor-cli_v1.20260709.18059_linux-arm64.tar.gz"
      sha256 "a3f1b420102f295e262311e88578a8e2a3fde3544ccefe808132effaa7acf39f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.18059/reactor-cli_v1.20260709.18059_linux-amd64.tar.gz"
      sha256 "49465ebfac7ff321f951335d70b7231238a4af489cd71655f84e490423a282d9"
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
