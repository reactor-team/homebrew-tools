# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260902.24473"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24473/reactor-cli_v1.20260902.24473_darwin-arm64.tar.gz"
      sha256 "7343fc6296ef7ad298ee8c600f233f445489139e125de0f0128d1ca6cde2b066"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24473/reactor-cli_v1.20260902.24473_darwin-amd64.tar.gz"
      sha256 "9ba24639bd8b77b41bf6c69b19adb1096fc97bf27bdd15429e1f720cc32db3b8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24473/reactor-cli_v1.20260902.24473_linux-arm64.tar.gz"
      sha256 "0399d4e78a99e4cd57e4a2bcca0cf52b3da4ed43a041a0926efa86850221f974"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260902.24473/reactor-cli_v1.20260902.24473_linux-amd64.tar.gz"
      sha256 "5eba43ebdbfb6ecc51056933f4640a237817bc6b615b8eda2962717945a1fff3"
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
