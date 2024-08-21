var exec = require('cordova/exec');

exports.enableBackgroundMode = function (successCallback, errorCallback) {
    exec(successCallback, errorCallback, 'MyBackgroundModePlugin', 'enableBackgroundMode', []);
};

exports.disableBackgroundMode = function (successCallback, errorCallback) {
    exec(successCallback, errorCallback, 'MyBackgroundModePlugin', 'disableBackgroundMode', []);
};
