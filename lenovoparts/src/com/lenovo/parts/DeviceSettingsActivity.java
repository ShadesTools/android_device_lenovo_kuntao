package com.lenovo.parts;

import android.app.Fragment;
import android.os.Bundle;
import android.view.MenuItem;

import com.lenovo.parts.MonetPreferenceActivity;

public class DeviceSettingsActivity extends MonetPreferenceActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        getActionBar().setDisplayHomeAsUpEnabled(true);

        Fragment fragment = getFragmentManager().findFragmentById(android.R.id.content);
        DeviceSettings deviceSettingsFragment;
        if (fragment == null) {
            deviceSettingsFragment = new DeviceSettings();
            getFragmentManager().beginTransaction()
                    .add(android.R.id.content, deviceSettingsFragment)
                    .commit();
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
