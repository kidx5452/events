(function (namespace, $) {
    "use strict";
    var AppNavigation = function () {
        var o = this;
        $(document).ready(function () {
            o.initialize();
        });
    };
    var p = AppNavigation.prototype;
    AppNavigation.MENU_MAXIMIZED = 1;
    AppNavigation.MENU_COLLAPSED = 2;
    AppNavigation.MENU_HIDDEN = 3;
    p._lastOpened = null;
    p.initialize = function () {
        this._enableEvents();
        this._invalidateMenu();
        this._evalMenuScrollbar();
    };
    p._enableEvents = function () {
        var o = this;
        $(window).on('resize', function (e) {
            o._handleScreenSize(e);
        });
        $('[data-toggle="menubar"]').on('click', function (e) {
            o._handleMenuToggleClick(e);
        });
        $('[data-dismiss="menubar"]').on('click', function (e) {
            o._handleMenubarLeave();
        });
        $('#main-menu').on('click', 'li', function (e) {
            o._handleMenuItemClick(e);
        });
        $('#main-menu').on('click', 'a', function (e) {
            o._handleMenuLinkClick(e);
        });
        $('body.menubar-hoverable').on('mouseenter', '#menubar', function (e) {
            setTimeout(function () {
                o._handleMenubarEnter();
            }, 1);
        });
    };
    p._handleScreenSize = function (e) {
        this._invalidateMenu();
        this._evalMenuScrollbar(e);
    };
    p._handleMenuToggleClick = function (e) {
        if (!materialadmin.App.isBreakpoint('xs')) {
            $('body').toggleClass('menubar-pin');
        }
        var state = this.getMenuState();
        if (state === AppNavigation.MENU_COLLAPSED) {
            this._handleMenubarEnter();
        }
        else if (state === AppNavigation.MENU_MAXIMIZED) {
            this._handleMenubarLeave();
        }
        else if (state === AppNavigation.MENU_HIDDEN) {
            this._handleMenubarEnter();
        }
    };
    p._handleMenuItemClick = function (e) {
        e.stopPropagation();
        var item = $(e.currentTarget);
        var submenu = item.find('> ul');
        var parentmenu = item.closest('ul');
        this._handleMenubarEnter(item);
        if (submenu.children().length !== 0) {
            this._closeSubMenu(parentmenu);
            var menuIsCollapsed = this.getMenuState() === AppNavigation.MENU_COLLAPSED;
            if (menuIsCollapsed || item.hasClass('expanded') === false) {
                this._openSubMenu(item);
            }
        }
    };
    p._handleMenubarEnter = function (menuItem) {
        var o = this;
        var offcanvasVisible = $('body').hasClass('offcanvas-left-expanded');
        var menubarExpanded = $('#menubar').data('expanded');
        var menuItemClicked = (menuItem !== undefined);
        if ((menuItemClicked === true || offcanvasVisible === false) && menubarExpanded !== true) {
            $('#content').one('mouseover', function (e) {
                o._handleMenubarLeave();
            });
            $('body').addClass('menubar-visible');
            $('#menubar').data('expanded', true);
            $('#menubar').triggerHandler('enter');
            if (menuItemClicked === false) {
                if (this._lastOpened) {
                    var o = this;
                    this._openSubMenu(this._lastOpened, 0);
                    this._lastOpened.parents('.gui-folder').each(function () {
                        o._openSubMenu($(this), 0);
                    });
                }
                else {
                    var item = $('#main-menu > li.active');
                    this._openSubMenu(item, 0);
                }
            }
        }
    };
    p._handleMenubarLeave = function () {
        $('body').removeClass('menubar-visible');
        if (materialadmin.App.minBreakpoint('md')) {
            if ($('body').hasClass('menubar-pin')) {
                return;
            }
        }
        $('#menubar').data('expanded', false);
        if (materialadmin.App.isBreakpoint('xs') === false) {
            this._closeSubMenu($('#main-menu'));
        }
    };
    p._handleMenuLinkClick = function (e) {
        if (this.getMenuState() !== AppNavigation.MENU_MAXIMIZED) {
            e.preventDefault();
        }
    };
    p._closeSubMenu = function (menu) {
        var o = this;
        menu.find('> li > ul').stop().slideUp(170, function () {
            $(this).closest('li').removeClass('expanded');
            o._evalMenuScrollbar();
        });
    };
    p._openSubMenu = function (item, duration) {
        var o = this;
        if (typeof(duration) === 'undefined') {
            duration = 170;
        }
        this._lastOpened = item;
        item.addClass('expanding');
        item.find('> ul').stop().slideDown(duration, function () {
            item.addClass('expanded');
            item.removeClass('expanding');
            o._evalMenuScrollbar();
            $('#main-menu ul').removeAttr('style');
        });
    };
    p._invalidateMenu = function () {
        var selectedLink = $('#main-menu a.active');
        selectedLink.parentsUntil($('#main-menu')).each(function () {
            if ($(this).is('li')) {
                $(this).addClass('active');
                $(this).addClass('expanded');
            }
        });
        if (this.getMenuState() === AppNavigation.MENU_COLLAPSED) {
            $('#main-menu').find('> li').removeClass('expanded');
        }
        if ($('body').hasClass('menubar-visible')) {
            this._handleMenubarEnter();
        }
        $('#main-menu').triggerHandler('ready');
        $('#menubar').addClass('animate');
    };
    p.getMenuState = function () {
        var matrix = $('#menubar').css("transform");
        var values = (matrix) ? matrix.match(/-?[\d\.]+/g) : null;
        var menuState = AppNavigation.MENU_MAXIMIZED;
        if (values === null) {
            if ($('#menubar').width() <= 100) {
                menuState = AppNavigation.MENU_COLLAPSED;
            }
            else {
                menuState = AppNavigation.MENU_MAXIMIZED;
            }
        }
        else {
            if (values[4] === '0') {
                menuState = AppNavigation.MENU_MAXIMIZED;
            }
            else {
                menuState = AppNavigation.MENU_HIDDEN;
            }
        }
        return menuState;
    };
    p._evalMenuScrollbar = function () {
        if (!$.isFunction($.fn.nanoScroller)) {
            return;
        }
        var footerHeight = $('#menubar .menubar-foot-panel').outerHeight();
        footerHeight = Math.max(footerHeight, 1);
        $('.menubar-scroll-panel').css({'padding-bottom': footerHeight});
        var menu = $('#menubar');
        if (menu.length === 0)
            return;
        var menuScroller = $('.menubar-scroll-panel');
        var parent = menuScroller.parent();
        if (parent.hasClass('nano-content') === false) {
            menuScroller.wrap('<div class="nano"><div class="nano-content"></div></div>');
        }
        var height = $(window).height() - menu.position().top - menu.find('.nano').position().top;
        var scroller = menuScroller.closest('.nano');
        scroller.css({height: height});
        scroller.nanoScroller({preventPageScrolling: true, iOSNativeScrolling: true});
    };
    window.materialadmin.AppNavigation = new AppNavigation;
}(this.materialadmin, jQuery));
