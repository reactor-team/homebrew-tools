# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260612.15933"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15933/reactor-cli_v1.20260612.15933_darwin-arm64.tar.gz"
      sha256 "e55713091802674c26b241bb94a66b45b0b08e5384dd8538705b9bad1ac5fda2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15933/reactor-cli_v1.20260612.15933_darwin-amd64.tar.gz"
      sha256 "a949697599da05b6e3f551a1e17dcae01ae9db890da419c7ba6d5f6459f0960f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15933/reactor-cli_v1.20260612.15933_linux-arm64.tar.gz"
      sha256 "24a4eda7288dc0ca2f286591e918754eb564507cefb6d4d1ca6e143d30e841dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15933/reactor-cli_v1.20260612.15933_linux-amd64.tar.gz"
      sha256 "5cfb60b4de01af2dedfbe635491339d035606757d5d4f1b1046ce7bdbc4d2de1"
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
