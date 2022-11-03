#!/bin/bash

rm tora-*.gem
gem build tora.gemspec
gem install tora-*.gem
