package ONVIF::PTZ::Types::AudioAttributes;
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

my %Bitrate_of :ATTR(:get<Bitrate>);
my %Encoding_of :ATTR(:get<Encoding>);
my %Samplerate_of :ATTR(:get<Samplerate>);

__PACKAGE__->_factory(
    [ qw(        Bitrate
        Encoding
        Samplerate

    ) ],
    {
        'Bitrate' => \%Bitrate_of,
        'Encoding' => \%Encoding_of,
        'Samplerate' => \%Samplerate_of,
    },
    {
        'Bitrate' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Encoding' => 'ONVIF::PTZ::Types::AudioEncoding',
        'Samplerate' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'Bitrate' => 'Bitrate',
        'Encoding' => 'Encoding',
        'Samplerate' => 'Samplerate',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::AudioAttributes

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AudioAttributes from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Bitrate


=item * Encoding


=item * Samplerate




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::AudioAttributes
   Bitrate =>  $some_value, # int
   Encoding => $some_value, # AudioEncoding
   Samplerate =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

