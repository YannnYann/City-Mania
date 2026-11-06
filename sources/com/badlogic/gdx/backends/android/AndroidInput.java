package com.badlogic.gdx.backends.android;

import android.view.View;
import com.badlogic.gdx.Input;

/* JADX INFO: loaded from: classes.dex */
public interface AndroidInput extends Input, View.OnTouchListener, View.OnKeyListener, View.OnGenericMotionListener {
    void onPause();

    void onResume();

    void processEvents();

    void setKeyboardAvailable(boolean z);
}
