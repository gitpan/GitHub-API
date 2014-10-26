requires "HTTP::Tiny" => "0";
requires "IO::Socket::SSL" => "1.56";
requires "Mozilla::CA" => "0";
requires "aliased" => "0";
requires "autobox::Core" => "0";
requires "autobox::JSON" => "0";
requires "common::sense" => "0";
requires "parent" => "0";
requires "perl" => "5.010";

on 'test' => sub {
  requires "File::Find" => "0";
  requires "File::Temp" => "0";
  requires "Test::More" => "0.88";
  requires "Test::Requires::Env" => "0";
  requires "autodie" => "0";
  requires "strict" => "0";
  requires "warnings" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};

on 'develop' => sub {
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "version" => "0.9901";
};
