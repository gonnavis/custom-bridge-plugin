package io.moemate.www.custom.bridge.plugin;

import android.util.Log;

public class CustomBridgePlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
