
/**   Tab js  **/
jQuery.noConflict();
(function( $ ) {
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})( jQuery );

/**  Maps  **/
jQuery.noConflict();
(function( $ ) {

        var sourceSwap = function () {
            var $this = $(this);
            var newSource = $this.attr('hover-src');
            $this.attr('hover-src', $this.attr('src'));
            $this.attr('src', newSource);
        };
        $(function() {
            $('.promotion-img').each(function() { 
                new Image().src = $(this).attr('hover-src'); 
            }).hover(sourceSwap, sourceSwap); 
        });
        
        $('#map-treasure').rwdImageMaps();
        
        $('.area-map').hover(
            function() {
              $("#map-treasure").attr('src',$(this).attr("hover-src"));
            }, function() {
              $("#map-treasure").attr('src', '/_resources/client/skins/images/map.jpg');
            }
        );
    })( jQuery );
	


/**  Side bar  **/
jQuery.noConflict();
(function( $ ) {

	var bodyEl = document.body,
		content = document.querySelector( '.content-wrap' ),
		openbtn = document.getElementById( 'open-button' ),
		closebtn = document.getElementById( 'close-button' ),
		isOpen = false;

	function init() {
		initEvents();
	}

	function initEvents() {
		openbtn.addEventListener( 'click', toggleMenu );
		if( closebtn ) {
			closebtn.addEventListener( 'click', toggleMenu );
		}

		// close the menu element if the target it´s not the menu element or one of its descendants..
		content.addEventListener( 'click', function(ev) {
			var target = ev.target;
			if( isOpen && target !== openbtn ) {
				toggleMenu();
			}
		} );
	}

	function toggleMenu() {
		if( isOpen ) {
			classie.remove( bodyEl, 'show-menu' );
		}
		else {
			classie.add( bodyEl, 'show-menu' );
		}
		isOpen = !isOpen;
	}

	init();

})( jQuery );

