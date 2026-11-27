# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261127.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.3/reactor-cli_v1.20261127.3_darwin-arm64.tar.gz"
      sha256 "e17bc96dbf67ee53f3cd0770ac44441da46dea4c568a6f5b05be7466ad015e7a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.3/reactor-cli_v1.20261127.3_darwin-amd64.tar.gz"
      sha256 "88efb9a85d50b4d209b69ace3cef9a1414a3659f90a4c8e4c1fd22a6d4c67dbd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.3/reactor-cli_v1.20261127.3_linux-arm64.tar.gz"
      sha256 "85a77face3ef9490f77e5748c2626d03e4fa72bb7a1f90db5e1660090843feeb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261127.3/reactor-cli_v1.20261127.3_linux-amd64.tar.gz"
      sha256 "4f32bb5a5f7a31d03b23ee2e9f28e924a7a31db9120b0590fa191a56eb7aa733"
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
