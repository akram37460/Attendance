<a href='http://maps.google.com/maps/api/geocode/json?latlng=40.6781784,-73.9441579'>Get</a>
<?php
function getAddress($latitude, $longitude)
{
        //google map api url
        $url = "http://maps.google.com/maps/api/geocode/json?latlng=$latitude,$longitude";

        // send http request
        $geocode = file_get_contents($url);
        $json = json_decode($geocode);
        $address = $json->results[0]->formatted_address;
        return $address;
}
// coordinates
$latitude = '40.6781784';
$longitude = '-73.9441579';
$result = getAddress($latitude, $longitude);
echo 'Address: ' . $result;

// produces output
// Address: 58 Brooklyn Ave, Brooklyn, NY 11216, USA
?>