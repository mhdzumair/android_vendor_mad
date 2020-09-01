/*
 * Copyright (C) 2015-2016 The CyanogenMod Project
 *               2017 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings.doze;

import android.app.IThemeCallback;
import android.app.ThemeManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MenuItem;
import android.provider.Settings.Secure;

import com.android.settingslib.drawer.SettingsDrawerActivity;

public class DozeSettingsActivity extends SettingsDrawerActivity {

    private static final String TAG_DOZE = "doze";
    private int mTheme;
    private ThemeManager mThemeManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        final int themeMode = Secure.getInt(getContentResolver(),
                Secure.THEME_PRIMARY_COLOR, 1);
        final int accentColor = Secure.getInt(getContentResolver(),
                Secure.THEME_ACCENT_COLOR, 0);
        mThemeManager = (ThemeManager) getSystemService(Context.THEME_SERVICE);
        if (mThemeManager != null) {
            mThemeManager.addCallback(mThemeCallback);
        }
        if (themeMode != 0 || accentColor != 0) {
            getTheme().applyStyle(mTheme, true);
        }
        super.onCreate(savedInstanceState);

        setContentView(R.layout.doze);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        getFragmentManager().beginTransaction().replace(R.id.content_frame,
                new DozeSettingsFragment(), TAG_DOZE).commit();
    }

    private final IThemeCallback mThemeCallback = new IThemeCallback.Stub() {

       @Override
       public void onThemeChanged(int themeMode, int color) {
           onCallbackAdded(themeMode, color);
           DozeSettingsActivity.this.runOnUiThread(() -> {
               DozeSettingsActivity.this.recreate();
           });
       }

       @Override
       public void onCallbackAdded(int themeMode, int color) {
           mTheme = color;
       }
   };

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
