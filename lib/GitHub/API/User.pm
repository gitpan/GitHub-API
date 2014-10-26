#
# This file is part of GitHub-API
#
# This software is Copyright (c) 2013 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
package GitHub::API::User;
{
  $GitHub::API::User::VERSION = '0.000000_02';
}

use common::sense;

# ABSTRACT: A user

use aliased 'GitHub::API::Repo';

# debugging...
#use Smart::Comments '###', '####';


sub repo {
    my ($self, $repo) = @_;

    my %repo = (%$self, repo => $repo);
    $repo{url} = "/repos/$self->{user}/$repo";

    #### %repo
    return bless \%repo, Repo;
}



!!42;

__END__

=pod

=encoding utf-8

=for :stopwords Chris Weyl

=head1 NAME

GitHub::API::User - A user

=head1 VERSION

This document describes version 0.000000_02 of GitHub::API::User - released March 30, 2013 as part of GitHub-API.

=head1 METHODS

=head2 repo($repo_name)

Returns a L<GitHub::API::Repo> object for the named repository.

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<GitHub::API|GitHub::API>

=back

=head1 SOURCE

The development version is on github at L<http://github.com/RsrchBoy/github-api>
and may be cloned from L<git://github.com/RsrchBoy/github-api.git>

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
https://github.com/RsrchBoy/github-api/issues

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut
