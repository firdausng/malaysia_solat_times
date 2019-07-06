const pptrFirefox = require('puppeteer');
var fs = require('fs');

(async () => {
    const browser = await pptrFirefox.launch();
    const page = await browser.newPage();
    await page.goto('https://www.e-solat.gov.my/index.php?siteId=24&pageId=24');

    var zoneList;
    var list = await page.$$eval("#inputZone optgroup", (elements) =>{
        var list = [];
        elements.forEach(element =>{
            element.childNodes.forEach(child => {
                var obj = {
                    state: element.label
                }
                var val = child.textContent.split("-")
                obj.zone = val[0].trim();
                obj.area = val[1].trim();
                list = [...list, obj]
            })
        })
        return list;
    });
    console.log(list);
    fs.writeFile('zone.json', JSON.stringify(list), function (err) {
        if (err) throw err;
        console.log('File is created successfully.');
      });
    //const zoneListBasedonState = await page.$("#inputZone optgroup");
    //   const zoneListBasedonState = await page.$$("#inputZone optgroup");
    //   var zoneList;
    //   zoneListBasedonState.forEach(async state => {
    //     var stateName = await (await state.getProperty('label')).jsonValue();
    //     var zone = {
    //         state: stateName
    //     }
    //     state.
    //     var zonel = await (await state.getProperty('childNodes'))
    //   })
    //   zoneListBasedonState.forEach( async state => console.log(await (await state.getProperty('textContent')).jsonValue()))
    //   await page.screenshot({path: 'firdausng.png'});
    //   await browser.close();

    browser.close();
})();