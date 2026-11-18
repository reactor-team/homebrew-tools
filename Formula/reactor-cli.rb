# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.41"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.41/reactor-cli_v1.20261118.41_darwin-arm64.tar.gz"
      sha256 "3ff33a5bf3e7b4d3481fcdffc7de608ef216915aa9f22c50fb73c6be62bfebc1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.41/reactor-cli_v1.20261118.41_darwin-amd64.tar.gz"
      sha256 "472e4bb915920217b31aa6b28bc56cea11b793a4be961d99a9078acc6ccd764b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.41/reactor-cli_v1.20261118.41_linux-arm64.tar.gz"
      sha256 "969b81676f5c566d467f872ed5d32a6d58e5f6086feac154bc7b2bd168da854e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.41/reactor-cli_v1.20261118.41_linux-amd64.tar.gz"
      sha256 "af9484ad632286e0eed396097c870e53d8c12de8c6fc2e6f541e5ad48518b29b"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
