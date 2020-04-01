import "bootstrap";

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


const sortAlphaSelector = document.getElementById("sort-alpha")
const sortNumberSelector = document.getElementById("sort-number")
