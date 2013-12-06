fs = require('fs')

dat = fs.readFileSync('Skin_NonSkin.txt').toString().replace(/\r/g,'').split('\n')
dat2 = []
for line in dat
    arr = line.split('\t')
    dat2.push (parseInt(val,10) for val in arr)
# dat2 = (line.split('\t') for line in dat)
fs.writeFileSync('test.json','data=' + JSON.stringify(dat2))
