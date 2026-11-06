package com.badlogic.gdx.backends.android.keyboardheight;

import android.R;
import android.app.Activity;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes.dex */
public class AndroidXKeyboardHeightProvider implements KeyboardHeightProvider {
    public static int cachedBottomInset;
    public static int cachedInsetLeft;
    public static int cachedInsetRight;
    public static int cachedOrientation;
    public static boolean cachedVisible;
    public static int keyboardLandscapeHeight;
    public static int keyboardPortraitHeight;
    public final Activity activity;
    public KeyboardHeightObserver observer;
    public View view;

    public AndroidXKeyboardHeightProvider(Activity activity) {
        this.activity = activity;
    }

    @Override // com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightProvider
    public void start() {
        this.view = this.activity.findViewById(R.id.content);
        cachedOrientation = this.activity.getResources().getConfiguration().orientation;
        ViewCompat.setOnApplyWindowInsetsListener(this.view, new OnApplyWindowInsetsListener() { // from class: com.badlogic.gdx.backends.android.keyboardheight.AndroidXKeyboardHeightProvider.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                int i;
                int i2;
                int i3;
                if (AndroidXKeyboardHeightProvider.this.observer == null) {
                    return windowInsetsCompat;
                }
                int i4 = AndroidXKeyboardHeightProvider.this.activity.getResources().getConfiguration().orientation;
                boolean zIsVisible = windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime());
                if (zIsVisible) {
                    Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.ime() | WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.mandatorySystemGestures());
                    if (i4 == 1) {
                        int unused = AndroidXKeyboardHeightProvider.keyboardPortraitHeight = insets.bottom;
                    } else {
                        int unused2 = AndroidXKeyboardHeightProvider.keyboardLandscapeHeight = insets.bottom;
                    }
                    int i5 = insets.bottom;
                    int i6 = insets.left;
                    i3 = insets.right;
                    i2 = i6;
                    i = i5;
                } else {
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                }
                if (zIsVisible == AndroidXKeyboardHeightProvider.cachedVisible && i == AndroidXKeyboardHeightProvider.cachedBottomInset && i2 == AndroidXKeyboardHeightProvider.cachedInsetLeft && i3 == AndroidXKeyboardHeightProvider.cachedInsetRight && i4 == AndroidXKeyboardHeightProvider.cachedOrientation) {
                    return windowInsetsCompat;
                }
                boolean unused3 = AndroidXKeyboardHeightProvider.cachedVisible = zIsVisible;
                int unused4 = AndroidXKeyboardHeightProvider.cachedBottomInset = i;
                int unused5 = AndroidXKeyboardHeightProvider.cachedInsetLeft = i2;
                int unused6 = AndroidXKeyboardHeightProvider.cachedInsetRight = i3;
                int unused7 = AndroidXKeyboardHeightProvider.cachedOrientation = i4;
                AndroidXKeyboardHeightProvider.this.observer.onKeyboardHeightChanged(zIsVisible, i, i2, i3, i4);
                return windowInsetsCompat;
            }
        });
    }

    @Override // com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightProvider
    public void close() {
        View view = this.view;
        if (view != null) {
            ViewCompat.setOnApplyWindowInsetsListener(view, null);
        }
        this.observer = null;
    }

    @Override // com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightProvider
    public void setKeyboardHeightObserver(KeyboardHeightObserver keyboardHeightObserver) {
        this.observer = keyboardHeightObserver;
    }
}
