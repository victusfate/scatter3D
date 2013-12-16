fs = require('fs')

sampleFactor = 0.1 # grab random 10% of points
args = process.argv.splice(2)

dat = fs.readFileSync(args[0]).toString().replace(/\r/g,'').split('\n')
dat2 = []
for line in dat
    if (Math.random() < sampleFactor)
        arr = line.split('\t')
        dat2.push (parseInt(val,10) for val in arr)
# dat2 = (line.split('\t') for line in dat)
fs.writeFileSync(args[0] + '.json','data=' + JSON.stringify(dat2))
