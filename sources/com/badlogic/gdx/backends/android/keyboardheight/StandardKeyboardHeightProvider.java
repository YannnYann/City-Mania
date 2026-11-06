package com.badlogic.gdx.backends.android.keyboardheight;

import android.R;
import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public class StandardKeyboardHeightProvider extends PopupWindow implements KeyboardHeightProvider {
    public static int cachedBottomInset;
    public static int cachedInsetLeft;
    public static int cachedInsetRight;
    public static int cachedOrientation;
    public static boolean cachedVisible;
    public static int keyboardLandscapeHeight;
    public static int keyboardPortraitHeight;
    public Activity activity;
    public KeyboardHeightObserver observer;
    public View parentView;
    public View popupView;

    public StandardKeyboardHeightProvider(Activity activity) {
        super(activity);
        this.activity = activity;
        LinearLayout linearLayout = new LinearLayout(((LayoutInflater) activity.getSystemService("layout_inflater")).getContext());
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.popupView = linearLayout;
        setContentView(linearLayout);
        setSoftInputMode(21);
        setInputMethodMode(1);
        setWidth(0);
        setHeight(-1);
        this.popupView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.badlogic.gdx.backends.android.keyboardheight.StandardKeyboardHeightProvider.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (StandardKeyboardHeightProvider.this.popupView != null) {
                    StandardKeyboardHeightProvider.this.handleOnGlobalLayout();
                }
            }
        });
    }

    @Override // com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightProvider
    public void start() {
        this.parentView = this.activity.findViewById(R.id.content);
        cachedOrientation = this.activity.getResources().getConfiguration().orientation;
        if (isShowing() || this.parentView.getWindowToken() == null) {
            return;
        }
        setBackgroundDrawable(new ColorDrawable(0));
        showAtLocation(this.parentView, 0, 0, 0);
    }

    @Override // com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightProvider
    public void close() {
        this.observer = null;
        dismiss();
    }

    @Override // com.badlogic.gdx.backends.android.keyboardheight.KeyboardHeightProvider
    public void setKeyboardHeightObserver(KeyboardHeightObserver keyboardHeightObserver) {
        this.observer = keyboardHeightObserver;
    }

    public final int getScreenOrientation() {
        return this.activity.getResources().getConfiguration().orientation;
    }

    public final void handleOnGlobalLayout() {
        Point point = new Point();
        this.activity.getWindowManager().getDefaultDisplay().getSize(point);
        Rect rect = new Rect();
        this.popupView.getWindowVisibleDisplayFrame(rect);
        int screenOrientation = getScreenOrientation();
        int i = point.y - rect.bottom;
        int i2 = rect.left;
        int iAbs = Math.abs(point.x - rect.right);
        boolean z = true;
        if (i > 0) {
            if (screenOrientation == 1) {
                keyboardPortraitHeight = i;
            } else {
                keyboardLandscapeHeight = i;
            }
        }
        if (i <= 0 && (keyboardLandscapeHeight != 0 || keyboardPortraitHeight != 0)) {
            z = false;
        }
        boolean z2 = z;
        if (z2 == cachedVisible && i == cachedBottomInset && i2 == cachedInsetLeft && iAbs == cachedInsetRight && screenOrientation == cachedOrientation) {
            return;
        }
        cachedVisible = z2;
        cachedBottomInset = i;
        cachedInsetLeft = i2;
        cachedInsetRight = iAbs;
        cachedOrientation = screenOrientation;
        KeyboardHeightObserver keyboardHeightObserver = this.observer;
        if (keyboardHeightObserver != null) {
            keyboardHeightObserver.onKeyboardHeightChanged(z2, i, i2, iAbs, screenOrientation);
        }
    }
}
