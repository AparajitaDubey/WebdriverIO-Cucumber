import checkEqualsText from '../support/check/checkEqualsText';
import checkContainsText from '../support/check/checkContainsText';
import isVisible from '../support/check/isVisible';
import checkTitle from '../support/check/checkTitle';
import checkURL from '../support/check/checkURL';


import isExisting from '../support/check/isExisting';

const { Then } = require('cucumber');

Then(
    /^I expect that (button|element) "([^"]*)?"( not)* matches the text "([^"]*)?"$/,
    checkEqualsText
);

Then(
    /^I expect that (button|element) "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
    checkContainsText
);

Then(
    /^I expect that element "([^"]*)?" is( not)* visible$/,
    isVisible
);


Then(
    /^I expect that the title is( not)* "([^"]*)?"$/,
    checkTitle
);

Then(
    /^I expect that the url is( not)* "([^"]*)?"$/,
    checkURL
);

Then(
    /^I expect that element "([^"]*)?" does( not)* exist$/,
    isExisting
);
