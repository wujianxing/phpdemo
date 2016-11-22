$(function() {
    $('.nav-toggle').click(function() {
        if ($('.top-nav').hasClass('on')) {
            $('.top-nav').removeClass('on')
        } else {
            $('.top-nav').addClass('on')
        };
    });

    var e = $(".navbar-header")
        , s = e.find(".login-register");
    s.on("mouseenter", "a", function() {
        $(this).hasClass("login") ? s.removeClass("register-hover").addClass("login-hover") : s.removeClass("login-hover").addClass("register-hover")
    }).on("mouseleave", "a", function() {
        s.hasClass("register-hover") || s.hasClass("login-hover") || s.addClass("login-hover")
    })
    $('#sync1').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        asNavFor: '#sync2'
    });
    $('#sync2').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        asNavFor: '#sync1',
        dots: true,
        centerMode: true,
        focusOnSelect: true,
        variableWidth: true,
        appendArrows: '#show-arrow'
    });

    $('.section-comment').slick({
    });


    //$( '.inputfile' ).each( function() {
    //    var $input = $( this ),
    //        $label = $input.siblings( '.upload-info' ),
    //        labelVal = $label.html();
    //
    //    $input.on( 'change', function( e ) {
    //        var fileName = '';
    //
    //        $label.addClass('show');
    //
    //        if( this.files && this.files.length > 1 )
    //            fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
    //        else if( e.target.value )
    //            fileName = e.target.value.split( '\\' ).pop();
    //
    //        if( fileName )
    //            $label.find( 'span.name' ).html( fileName );
    //        else
    //            $label.html( labelVal );
    //    });
    //});

    // 用户中心侧边导航
    $(".sidebar-nav>li>a").on("click", function() {
        if ($(this).hasClass('active')) {
            $(this).removeClass("active");
            $(this).siblings('.collapsible').slideUp(200);
            $(this).parent('li').removeClass('on');
        } else {
            $(".sidebar-nav>li>a").removeClass("active");
            $(this).addClass("active");
            $('.collapsible').slideUp(200);
            $(this).siblings('.collapsible').slideDown(200);
            $(".sidebar-nav>li").removeClass('on');
            $(this).parent('li').addClass('on');
        }
    });


    $('.makemoney-list').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 2,
        slidesToScroll: 2,
        autoplay: true,
        autoplaySpeed: 5000,
        responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            }, {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            }, {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });
    $('.makemoney-list .wave').each(function() {
        var $waveHeight = $(this).height();
        if ($waveHeight > 100) {
            $(this).siblings().addClass('white');
        }
    });
    $('.luckly .wave').each(function() {
        var $waveHeight = $(this).height();
        if ($waveHeight > 100) {
            $(this).siblings().addClass('white');
        }
    });



})
