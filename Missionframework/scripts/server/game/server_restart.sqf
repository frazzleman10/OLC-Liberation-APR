scriptName "server_restart";

if (!isDedicated) exitWith {};

["Real-time restart system initiated", "RESTART"] call KPLIB_fnc_log;

// Flags to avoid repeated notifications
private _notified30 = false;
private _notified15 = false;
private _notified5  = false;
private _notified1  = false;

while {true} do {
    private _currentTimeRaw = "real_date" callExtension "GMT"; // Expected: "[2025,7,20,19,3]"
    private _parsed = parseSimpleArray _currentTimeRaw;

    if ((count _parsed) == 5) then {
        private _year   = _parsed select 0;
        private _month  = _parsed select 1;
        private _day    = _parsed select 2;
        private _hour   = _parsed select 3;
        private _minute = _parsed select 4;

        // === NOTIFICATIONS ===
        if (_hour == 11 && _minute == 30 && !_notified30) then {
            ["lib_restart_30_min"] remoteExecCall ["BIS_fnc_showNotification"];
            ["30 minutes until daily restart (12:00)", "RESTART"] call KPLIB_fnc_log;
            _notified30 = true;
        };

        if (_hour == 11 && _minute == 45 && !_notified15) then {
            ["lib_restart_15_min"] remoteExecCall ["BIS_fnc_showNotification"];
            ["15 minutes until daily restart (12:00)", "RESTART"] call KPLIB_fnc_log;
            _notified15 = true;
        };

        if (_hour == 11 && _minute == 55 && !_notified5) then {
            ["lib_restart_5_min"] remoteExecCall ["BIS_fnc_showNotification"];
            ["5 minutes until daily restart (12:00)", "RESTART"] call KPLIB_fnc_log;
            _notified5 = true;
        };

        if (_hour == 11 && _minute == 58 && !_notified1) then {
            ["lib_restart_60_s"] remoteExecCall ["BIS_fnc_showNotification"];
            ["1 minute until daily restart (12:00)", "RESTART"] call KPLIB_fnc_log;
            _notified1 = true;
        };

        // === TRIGGER RESTART AT 12:00 ===
        if (_hour == 11 && _minute == 59) then {
            ["Initiating scheduled server shutdown", "RESTART"] call KPLIB_fnc_log;
            sleep 5;

            private _myPass = getText(configFile >> "CfgServerTime" >> "Settings" >> "myPass");
            private _shutdownSuccess = _myPass serverCommand "#shutdown";

            if (_shutdownSuccess) then {
                ["Shutdown command accepted. Restarting...", "RESTART"] call KPLIB_fnc_log;
            } else {
                ["Shutdown command failed. Check RCON permissions.", "RESTART"] call KPLIB_fnc_log;
            };

            sleep 60; // avoid retriggering within the same minute
        };

        // === RESET FLAGS after restart ===
        if (_hour == 12 && _minute == 10) then {
            _notified30 = false;
            _notified15 = false;
            _notified5  = false;
            _notified1  = false;
        };

    } else {
        ["Invalid system time format returned from extension!", "RESTART"] call KPLIB_fnc_log;
    };

    sleep 15;
};
