# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261103.177"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.177/reactor-cli_v1.20261103.177_darwin-arm64.tar.gz"
      sha256 "7c8a21b0cccac2a8f947a2a05e03da12b164b471793f46fd155b1bd8bf5380d8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.177/reactor-cli_v1.20261103.177_darwin-amd64.tar.gz"
      sha256 "c5993955409ffaa3c5d7aac87af8b6f8ed3497f59c8499788b078762db8d9208"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.177/reactor-cli_v1.20261103.177_linux-arm64.tar.gz"
      sha256 "0c24d01b0558fc6b9dc8e50da41fb50711be628f071311f25fa2d1062c2482d8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.177/reactor-cli_v1.20261103.177_linux-amd64.tar.gz"
      sha256 "a3ee94460c46e2bce40a66ae701acc3cd52d1494989bafa09f1451500b2cac6c"
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
