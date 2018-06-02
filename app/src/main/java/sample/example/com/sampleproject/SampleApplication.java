package sample.example.com.sampleproject;

import android.app.Application;
import android.os.Bundle;

import net.hockeyapp.android.CrashManager;
import net.hockeyapp.android.UpdateManager;

/**
 * Created by piyushgupta01 on 03-06-2018.
 */

public class SampleApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        checkForUpdates();
        checkForCrashes();
    }

//    @Override
//    public void onDestroy() {
//        super.onDestroy();
//        unregisterManagers();
//        unregisterManagers();
//    }

    private void checkForCrashes() {
        CrashManager.register(this);
    }

    private void checkForUpdates() {
        // Remove this for store builds!
//        UpdateManager.register(this);
    }

    private void unregisterManagers() {
//        UpdateManager.unregister();
    }
}
