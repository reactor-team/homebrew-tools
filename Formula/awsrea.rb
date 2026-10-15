# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
#
# This file is a template — do NOT edit it directly.
# CI renders it with `//:ci:release -- render-formula --product awsrea` and
# pushes the result to reactor-team/homebrew-tools as Formula/awsrea.rb.

class Awsrea < Formula
  desc "AWS IAM Identity Center sign-in and profile switcher"
  homepage "https://github.com/reactor-team/homebrew-tools"
  version "v1.20261015.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261015.1/awsrea_v1.20261015.1_darwin-arm64.tar.gz"
      sha256 "aee472b75586a33a6b9fb9134591b4a6c2c8b44ef402c31d7d5297ccb2b0a335"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261015.1/awsrea_v1.20261015.1_darwin-amd64.tar.gz"
      sha256 "3abfb3aede8dc3cdd5e0ce87fcb0c2042b6ec8de417114da050898624856beae"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261015.1/awsrea_v1.20261015.1_linux-arm64.tar.gz"
      sha256 "e127b5889adba437519c9bdf185f14d7369916396b340d501626d149f7067824"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261015.1/awsrea_v1.20261015.1_linux-amd64.tar.gz"
      sha256 "c6fcb1d5dc85c9a8b8e94e78a134357a9a0cabb7dd6d3b12a4cdcbcd3ec64424"
    end
  end

  def install
    bin.install "awsrea"
    # Keeps existing `aws-sso-reactor` aliases and credential_process lines working.
    bin.install_symlink "awsrea" => "aws-sso-reactor"
  end

  def caveats
    <<~EOS
      Configure awsrea before first use:
        awsrea init
      or copy the config file your team provides to ~/.reactor/awsrea.yaml.

      To let awsrea switch profiles in your shell, add this line to ~/.zshrc:
        eval "$(awsrea shell-init)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsrea --version")
  end
end
