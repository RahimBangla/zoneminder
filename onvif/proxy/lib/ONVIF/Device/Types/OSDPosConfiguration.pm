package ONVIF::Device::Types::OSDPosConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Type_of :ATTR(:get<Type>);
my %Pos_of :ATTR(:get<Pos>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Type
        Pos
        Extension

    ) ],
    {
        'Type' => \%Type_of,
        'Pos' => \%Pos_of,
        'Extension' => \%Extension_of,
    },
    {
        'Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Pos' => 'ONVIF::Device::Types::Vector',
        'Extension' => 'ONVIF::Device::Types::OSDPosConfigurationExtension',
    },
    {

        'Type' => 'Type',
        'Pos' => 'Pos',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::OSDPosConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OSDPosConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Type


=item * Pos


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::OSDPosConfiguration
   Type =>  $some_value, # string
   Pos => ,
   Extension =>  { # ONVIF::Device::Types::OSDPosConfigurationExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

