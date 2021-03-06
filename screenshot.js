var page = require('webpage').create();
system = require('system');
url = system.args[1];
id  = system.args[2];
//viewportSize being the actual size of the headless browser
page.viewportSize = { width: 1024, height: 768 };
//the clipRect is the portion of the page you are taking a screenshot of
//page.clipRect = { top: 0, left: 0, width: 1024, height: 768 };
//the rest of the code is the same as the previous example
page.open(url, function() {
  page.render(id+'.png');
  phantom.exit();
});
