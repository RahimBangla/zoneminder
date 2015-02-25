
package ONVIF::Device::Elements::DeleteCertificates;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/device/wsdl' }

__PACKAGE__->__set_name('DeleteCertificates');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %CertificateID_of :ATTR(:get<CertificateID>);

__PACKAGE__->_factory(
    [ qw(        CertificateID

    ) ],
    {
        'CertificateID' => \%CertificateID_of,
    },
    {
        'CertificateID' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
    },
    {

        'CertificateID' => 'CertificateID',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Device::Elements::DeleteCertificates

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
DeleteCertificates from the namespace http://www.onvif.org/ver10/device/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * CertificateID

 $element->set_CertificateID($data);
 $element->get_CertificateID();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Device::Elements::DeleteCertificates->new($data);

Constructor. The following data structure may be passed to new():

 {
   CertificateID =>  $some_value, # token
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

