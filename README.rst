================
RSpec Formatters
================

Provides tap and junit formatters for rspec.

Usage
=====

::

    $ rspec -r ./lib/tap_formatter.rb --formatter TapFormatter ...
    ok 1 - should return the proper flags
    ok 2 - should the preset if metrics is true
    ok 3 - should set the profile name to mobile
    ok 4 - should always find an executable ffmpeg file
    ok 5 - should disregard the input if it is a valid file and search for the real binary
    ok 6 - should accept the input if its an executable file
    ok 7 - should invoke the ffmpeg binary with the flags defined in the profile and return true on success
    ok 8 - should invoke ffmpeg binary with the flags defined in the profile and return false on error
    ok 9 - should be able to parse SSIM and PSNR if available

::

    $ rspec -r ./lib/junit_formatter.rb --formatter JUnitFormatter ...
    <?xml version="1.0" encoding="utf-8" ?>
    <testsuite errors="0" failures="0" tests="9" time="0.013841" timestamp="2011-01-21T17:35:03-02:00">
      <properties />
      <testcase classname="./spec/encoder/profile_spec.rb" name="should return the proper flags" time="0.000866" />
      <testcase classname="./spec/encoder/profile_spec.rb" name="should the preset if metrics is true" time="0.000716" />
      <testcase classname="./spec/encoder/profile_spec.rb" name="should set the profile name to mobile" time="0.000698" />
      <testcase classname="./spec/encoder/ffmpeg_spec.rb" name="should always find an executable ffmpeg file" time="0.00077" />
      <testcase classname="./spec/encoder/ffmpeg_spec.rb" name="should disregard the input if it is a valid file and search for the real binary" time="0.000761" />
      <testcase classname="./spec/encoder/ffmpeg_spec.rb" name="should accept the input if its an executable file" time="0.000691" />
      <testcase classname="./spec/encoder/ffmpeg_spec.rb" name="should invoke the ffmpeg binary with the flags defined in the profile and return true on success" time="0.001449" />
      <testcase classname="./spec/encoder/ffmpeg_spec.rb" name="should invoke ffmpeg binary with the flags defined in the profile and return false on error" time="0.001355" />
      <testcase classname="./spec/encoder/ffmpeg_spec.rb" name="should be able to parse SSIM and PSNR if available" time="0.004969" />
    </testsuite>
