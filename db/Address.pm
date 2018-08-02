package Address::db::Address;

use strict;
use parent qw(dbcore);
use warnings;
use Data::Dumper;

#**********************************************************
=head2 new($db, $admin, \%conf) -- Constructor for Address
=cut
#**********************************************************
sub new{
  my ($class, $db, $admin, $CONF) = @_;
  my $self = {
    db    => $db,
    admin => $admin,
    conf  => $CONF
  };

  bless($self, $class);
  return $self;
}
#**********************************************************
=head2 country_get() - Test function

  Arguments:
    $attr   - Extra attributes
 
  Returns:
   LIST
 
  Example:
    country_get({ TEXT => 'Some text' });
 
=cut
#**********************************************************
sub country_get { 
  my $self = shift;
  my ($attr) = @_;
  
  $self->query("
  SELECT country.id AS country_id, country.name AS country_name
  FROM country",
  undef, { COLS_NAME => 1 });
  
  return $self->{list};
}
 
sub region_get { 
  my $self = shift;
  my ($attr) = @_;
  
  $self->query("
  SELECT region.id AS region_id, region.name AS region_name, country_id
  FROM region",
  undef, { COLS_NAME => 1 });
  
  return $self->{list};
}
 
sub city_get { 
  my $self = shift;
  my ($attr) = @_;
  
  $self->query("SELECT city.id AS city_id, city.name AS city_name, region_id, region.name AS region_name, country.id AS country_id, country.name AS country_name 
  FROM city 
  JOIN region ON region.id = city.region_id 
  JOIN country ON country.id = region.country_id 
  WHERE city.id != 0;",
  undef, { COLS_NAME => 1 });
  
  return $self->{list};
}
 
sub district_get { 
  my $self = shift;
  my ($attr) = @_;
  
  $self->query("
  SELECT district.id AS district_id, district.name AS district_name, city.id AS city_id, city.name AS city_name, region_id, region.name AS region_name, country.id AS country_id, country.name AS country_name
  FROM district
  JOIN city ON city.id = district.city_id 
  JOIN region ON region.id = city.region_id 
  JOIN country ON country.id = region.country_id;",
  undef, { COLS_NAME => 1 });
  
  return $self->{list};
}
 
sub street_get { 
  my $self = shift;
  my ($attr) = @_;
  
  $self->query("
  SELECT street.id AS street_id, street.name AS street_name, district.id AS district_id, district.name AS district_name, city.id AS city_id, city.name AS city_name, region_id, region.name AS region_name, country.id AS country_id, country.name AS country_name
  FROM street
  JOIN district ON district.id = street.district_id 
  JOIN city ON city.id = district.city_id 
  JOIN region ON region.id = city.region_id 
  JOIN country ON country.id = region.country_id;",
  undef, { COLS_NAME => 1 });
  
  return $self->{list};
}
 
sub building_get { 
  my $self = shift;
  my ($attr) = @_;
  
  $self->query("
  SELECT building.id AS building_id, building.name AS building_name, street.id AS street_id, street.name AS street_name, district.id AS district_id, district.name AS district_name, city.id AS city_id, city.name AS city_name, region_id, region.name AS region_name, country.id AS country_id, country.name AS country_name
  FROM building
  JOIN street ON street.id = building.street_id 
  JOIN district ON district.id = street.district_id 
  JOIN city ON city.id = district.city_id 
  JOIN region ON region.id = city.region_id 
  JOIN country ON country.id = region.country_id;",
  undef, { COLS_NAME => 1 });
  
  return $self->{list};
}
#**********************************************************
=head2 city_add() - Test function

  Arguments:
    $attr   - Extra attributes
 
  Returns:
   TRUE or FALSE
 
=cut
#**********************************************************
sub city_add { 
  my $self = shift;
  my ($attr) = @_;

  $self->query_add('city', $attr);
  
  return $self;
}
 
sub district_add { 
  my $self = shift;
  my ($attr) = @_;

  $self->query_add('district', $attr);
  
  return $self;
}
 
sub street_add { 
  my $self = shift;
  my ($attr) = @_;

  $self->query_add('street', $attr);
  
  return $self;
}
 
sub building_add { 
  my $self = shift;
  my ($attr) = @_;

  $self->query_add('building', $attr);
  
  return $self;
}
 
sub city_del {
  my $self = shift;
  my ($attr) = @_;
  
  $self->query_del('city', $attr);
  
  return $self;
}
 
sub district_del {
  my $self = shift;
  my ($attr) = @_;
  
  $self->query_del('district', $attr);
  
  return $self;
}
 
sub street_del {
  my $self = shift;
  my ($attr) = @_;
  
  $self->query_del('street', $attr);
  
  return $self;
}

sub building_del {
  my $self = shift;
  my ($attr) = @_;
  
  $self->query_del('building', $attr);
  
  return $self;
}

1;