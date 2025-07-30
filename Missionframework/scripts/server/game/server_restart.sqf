scriptName "server_restart";

if (!isDedicated) exitWith {};

["Real-time restart system initiated", "RESTART"] call KPLIB_fnc_log;

private _notified30 = false;
private _notified15 = false;
private _notified5  = false;
private _notified1  = false;
private _restartTriggered = false;

while {true} do {
    private _currentTimeRaw = "real_date" callExtension "GMT";

    if (_currentTimeRaw isEqualType "" && {_currentTimeRaw != ""} && {_currentTimeRaw select [0,5] != "ERROR"}) then {
        private _parsed = parseSimpleArray _currentTimeRaw;

        if ((count _parsed) == 5) then {
            private _year   = _parsed select 0;
            private _month  = _parsed select 1;
            private _day    = _parsed select 2;
            private _hour   = _parsed select 3;
            private _minute = _parsed select 4;

            // === DAILY RESET FLAGS ===
            if ((_hour == 0 && _minute == 0) || (_hour == 11 && _minute == 10)) then {
                _notified30 = false;
                _notified15 = false;
                _notified5  = false;
                _notified1  = false;
                _restartTriggered = false;
            };

            // === NOTIFICATIONS (for 12:00 BST = 11:00 UTC) ===
            if (_hour == 10 && _minute == 30 && !_notified30) then {
                ["lib_restart_30_min"] remoteExecCall ["BIS_fnc_showNotification"];
                ["30 minutes until daily restart (12:00 BST)", "RESTART"] call KPLIB_fnc_log;
                _notified30 = true;
            };

            if (_hour == 10 && _minute == 45 && !_notified15) then {
                ["lib_restart_15_min"] remoteExecCall ["BIS_fnc_showNotification"];
                ["15 minutes until daily restart (12:00 BST)", "RESTART"] call KPLIB_fnc_log;
                _notified15 = true;
            };

            if (_hour == 10 && _minute == 55 && !_notified5) then {
                ["lib_restart_5_min"] remoteExecCall ["BIS_fnc_showNotification"];
                ["5 minutes until daily restart (12:00 BST)", "RESTART"] call KPLIB_fnc_log;
                _notified5 = true;
            };

            if (_hour == 10 && _minute == 59 && !_notified1) then {
                ["lib_restart_60_s"] remoteExecCall ["BIS_fnc_showNotification"];
                ["1 minute until daily restart (12:00 BST)", "RESTART"] call KPLIB_fnc_log;
                _notified1 = true;
            };

            // === TRIGGER RESTART AT 11:00 UTC (12:00 BST) ===
            if (_hour == 11 && _minute == 00 && !_restartTriggered) then {
                _restartTriggered = true;
                ["Initiating scheduled server shutdown (12:00 BST / 11:00 UTC)", "RESTART"] call KPLIB_fnc_log;
                sleep 5;

                private _myPass = getText(configFile >> "CfgServerTime" >> "Settings" >> "myPass");
                private _shutdownSuccess = _myPass serverCommand "#shutdown";

                if (_shutdownSuccess) then {
                    ["Shutdown command accepted. Restarting...", "RESTART"] call KPLIB_fnc_log;
                } else {
                    ["Shutdown command failed. Check RCON permissions.", "RESTART"] call KPLIB_fnc_log;
                };

                sleep 60; // Just in case
            };
        } else {
            ["Invalid system time format returned from extension!", "RESTART"] call KPLIB_fnc_log;
        };
    } else {
        ["Failed to fetch valid time from 'real_date' callExtension: " + str(_currentTimeRaw), "RESTART"] call KPLIB_fnc_log;
    };

    sleep 15;
};