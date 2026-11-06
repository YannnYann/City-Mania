package com.badlogic.gdx.backends.android.keyboardheight;

/* JADX INFO: loaded from: classes.dex */
public interface KeyboardHeightProvider {
    void close();

    void setKeyboardHeightObserver(KeyboardHeightObserver keyboardHeightObserver);

    void start();
}
