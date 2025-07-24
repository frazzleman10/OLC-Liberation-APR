class CfgPatches
{
    class ServerTimeMod
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {};
    };
};

class CfgServerTime
{
    class Settings
    {
        myPass = "don'task";  // use getText to access
        serverTimezone = "GMT";         // optional metadata
    };
};
