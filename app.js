require('dotenv').config();

const aws = require('@aws-sdk/client-ses');
const { defaultProvider } = require('@aws-sdk/credential-provider-node');
const ses = new aws.SES({
    defaultProvider
});

ses.sendTemplatedEmail({
    Destination: {
        ToAddresses: ['w.srodgerss@gmail.com']
    },
    Source: 'dev.wrodgerss@gmail.com',
    Template: 'hello_email_template',
    TemplateData: JSON.stringify({
        name: 'Rodgers',
        subject: 'Salamu'
    })
})
.then(console.log)
.catch(console.error);
