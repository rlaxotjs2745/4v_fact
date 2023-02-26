// Auto update layout
(function() {
  window.layoutHelpers.setAutoUpdate(true);
})();

// Collapse menu
(function() {
  if ($('#layout-sidenav').hasClass('sidenav-horizontal') || window.layoutHelpers.isSmallScreen()) {
    return;
  }

  try {
    window.layoutHelpers.setCollapsed(
      localStorage.getItem('layoutCollapsed') === 'true',
      false
    );
  } catch (e) {}
})();

$(function() {
  // Initialize sidenav
  $('#layout-sidenav').each(function() {
    new SideNav(this, {
      orientation: $(this).hasClass('sidenav-horizontal') ? 'horizontal' : 'vertical'
    });
  });

  // Initialize sidenav togglers
  $('body').on('click', '.layout-sidenav-toggle', function(e) {
    e.preventDefault();
    window.layoutHelpers.toggleCollapsed();
    if (!window.layoutHelpers.isSmallScreen()) {
      try { localStorage.setItem('layoutCollapsed', String(window.layoutHelpers.isCollapsed())); } catch (e) {}
    }
  });

  if ($('html').attr('dir') === 'rtl') {
    $('#layout-navbar .dropdown-menu').toggleClass('dropdown-menu-right');
  }

});

function formatDate(date) {

  var d = new Date(date),

      month = '' + (d.getMonth() + 1) ,
      day = '' + d.getDate(),
      year = d.getFullYear();

  if (month.length < 2) month = '0' + month;
  if (day.length < 2) day = '0' + day;
  return [year, month, day].join('-');

}

function getHMtoDate(date) {

  var d = new Date(date),

      Hour = '' + (d.getHours()) ,
      Min = '' + d.getMinutes(),
      Sec = '00';

  if (Hour.length < 2) Hour = '0' + Hour;
  if (Min.length < 2) Min = '0' + Min;

  return [Hour, Min, Sec].join(':');

}

