import "bootstrap";

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete.js';

initMapbox();
initAutocomplete();

// Search hospital in the listing.

const searchHospitalElement = document.getElementById("searchHospitalInput");
if (searchHospitalElement) {
	searchHospitalElement.addEventListener("keyup", function(){
	  let hospitalElement, i, txtValue;
	  const filter = searchHospitalElement.value.toUpperCase();
	  const itemListing = document.querySelectorAll('.hospital-card');

	  // Loop through all list items, and hide those who don't match the search query
	  for (i = 0; i < itemListing.length; i++) {
	    hospitalElement = itemListing[i].querySelectorAll(".hospital-text")[0];
	    txtValue = hospitalElement.textContent || hospitalElement.innerText;
	    if (txtValue.toUpperCase().indexOf(filter) > -1) {
	      itemListing[i].style.display = "";
	    } else {
	      itemListing[i].style.display = "none";
	    }
	  }

	});
}
