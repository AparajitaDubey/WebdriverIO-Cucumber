import clickElement from '../support/action/clickElement';
import setInputField from '../support/action/setInputField';
import pause from '../support/action/pause';
import scroll from '../support/action/scroll';


const { When } = require('cucumber');


When(
    /^I (click|doubleclick) on the (link|button|element) "([^"]*)?"$/,
    clickElement
);

When(
    /^I (add|set) "([^"]*)?" to the inputfield "([^"]*)?"$/,
    setInputField
);

When(
    /^I pause for (\d+)ms$/,
    pause
);

When(
    /^I scroll to element "([^"]*)?"$/,
    scroll
);
