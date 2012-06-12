<li id="zoned-prd-country"">
  <%= label_tag t('country') + ": "  %>
  <%= select_tag 'id',
    options_for_select( # common countries have negative id
      [["Kein Land ausgewählt", 0]] +
      Rails.application.config.commonCountriesForSelect
      0, # preselect item "No country selected"
    ),
    :data => {
	    :remote => true,
	    :url => url_for(
	      :controller => "zoned", 
		    :action => "setcountry",
		  ),
		}
  %>
</li>