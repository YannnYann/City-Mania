package com.badlogic.gdx.backends.android;

import android.view.PointerIcon;
import android.view.View;
import com.badlogic.gdx.graphics.Cursor;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.ironsource.C3558d4;

/* JADX INFO: loaded from: classes.dex */
public class AndroidCursor implements Cursor {

    /* JADX INFO: renamed from: com.badlogic.gdx.backends.android.AndroidCursor$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor;

        static {
            int[] iArr = new int[Cursor.SystemCursor.values().length];
            $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor = iArr;
            try {
                iArr[Cursor.SystemCursor.Arrow.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.Ibeam.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.Crosshair.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.Hand.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.HorizontalResize.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.VerticalResize.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.NWSEResize.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.NESWResize.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.AllResize.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.NotAllowed.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[Cursor.SystemCursor.None.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static void setSystemCursor(View view, Cursor.SystemCursor systemCursor) {
        int i;
        switch (AnonymousClass1.$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor[systemCursor.ordinal()]) {
            case 1:
                i = 1000;
                break;
            case 2:
                i = 1008;
                break;
            case 3:
                i = 1007;
                break;
            case 4:
                i = 1002;
                break;
            case 5:
                i = C3558d4.j;
                break;
            case 6:
                i = 1015;
                break;
            case 7:
                i = 1017;
                break;
            case 8:
                i = C3558d4.l;
                break;
            case 9:
                i = C3558d4.i;
                break;
            case 10:
                i = 1012;
                break;
            case 11:
                i = 0;
                break;
            default:
                throw new GdxRuntimeException("Unknown system cursor " + systemCursor);
        }
        view.setPointerIcon(PointerIcon.getSystemIcon(view.getContext(), i));
    }
}
