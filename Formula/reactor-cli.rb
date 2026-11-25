# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261125.12"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.12/reactor-cli_v1.20261125.12_darwin-arm64.tar.gz"
      sha256 "afc74fc94e92f58d32b93b8291d358aa4ac469d4fee736b18960582960900057"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.12/reactor-cli_v1.20261125.12_darwin-amd64.tar.gz"
      sha256 "4ba5870ac163ae39d34fdd4d6ac332f2caf2eeacd7e2bc96d82257a166483e43"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.12/reactor-cli_v1.20261125.12_linux-arm64.tar.gz"
      sha256 "aa1d16a406acdb915f7fe2c3307054ac6763dfc047aa5a4dc6a4b3c940febc86"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.12/reactor-cli_v1.20261125.12_linux-amd64.tar.gz"
      sha256 "b07a53f5f5d28e827359f1327569f0096cf7234af473e47a7ff1f74fa108e830"
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
