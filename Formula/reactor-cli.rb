# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260708.17859"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260708.17859/reactor-cli_v1.20260708.17859_darwin-arm64.tar.gz"
      sha256 "36d189f47942c740054aeada575939bc05a6d150ff93e596cb52b2fe817ef151"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260708.17859/reactor-cli_v1.20260708.17859_darwin-amd64.tar.gz"
      sha256 "8ba590e45f2bd32512f738007fe641018fab3015370bfcdc4a16b8e1cfcc624c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260708.17859/reactor-cli_v1.20260708.17859_linux-arm64.tar.gz"
      sha256 "8c65bd81bbfba14bde503081efcd84a3cfcf914c27ee164e85acd79fdab45052"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260708.17859/reactor-cli_v1.20260708.17859_linux-amd64.tar.gz"
      sha256 "0985b7850a0edd1aa2af39c48cbef42ca9ec03caff7d886923742adbd388dae6"
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
