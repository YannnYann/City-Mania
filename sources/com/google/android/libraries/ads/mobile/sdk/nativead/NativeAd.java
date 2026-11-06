package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeAd extends Ad {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class NativeAdType {
        public static final NativeAdType BANNER;
        public static final NativeAdType CUSTOM_NATIVE;
        public static final NativeAdType NATIVE;
        public static final /* synthetic */ NativeAdType[] a;

        static {
            NativeAdType nativeAdType = new NativeAdType("NATIVE", 0);
            NATIVE = nativeAdType;
            NativeAdType nativeAdType2 = new NativeAdType("CUSTOM_NATIVE", 1);
            CUSTOM_NATIVE = nativeAdType2;
            NativeAdType nativeAdType3 = new NativeAdType("BANNER", 2);
            BANNER = nativeAdType3;
            NativeAdType[] nativeAdTypeArr = {nativeAdType, nativeAdType2, nativeAdType3};
            a = nativeAdTypeArr;
            EnumEntriesKt.enumEntries(nativeAdTypeArr);
        }

        public NativeAdType(String str, int i) {
        }

        public static NativeAdType[] values() {
            return (NativeAdType[]) a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class NativeMediaAspectRatio {
        public static final NativeMediaAspectRatio ANY;
        public static final NativeMediaAspectRatio LANDSCAPE;
        public static final NativeMediaAspectRatio PORTRAIT;
        public static final NativeMediaAspectRatio SQUARE;
        public static final NativeMediaAspectRatio UNKNOWN;
        public static final /* synthetic */ NativeMediaAspectRatio[] a;

        static {
            NativeMediaAspectRatio nativeMediaAspectRatio = new NativeMediaAspectRatio("UNKNOWN", 0);
            UNKNOWN = nativeMediaAspectRatio;
            NativeMediaAspectRatio nativeMediaAspectRatio2 = new NativeMediaAspectRatio("ANY", 1);
            ANY = nativeMediaAspectRatio2;
            NativeMediaAspectRatio nativeMediaAspectRatio3 = new NativeMediaAspectRatio("LANDSCAPE", 2);
            LANDSCAPE = nativeMediaAspectRatio3;
            NativeMediaAspectRatio nativeMediaAspectRatio4 = new NativeMediaAspectRatio("PORTRAIT", 3);
            PORTRAIT = nativeMediaAspectRatio4;
            NativeMediaAspectRatio nativeMediaAspectRatio5 = new NativeMediaAspectRatio("SQUARE", 4);
            SQUARE = nativeMediaAspectRatio5;
            NativeMediaAspectRatio[] nativeMediaAspectRatioArr = {nativeMediaAspectRatio, nativeMediaAspectRatio2, nativeMediaAspectRatio3, nativeMediaAspectRatio4, nativeMediaAspectRatio5};
            a = nativeMediaAspectRatioArr;
            EnumEntriesKt.enumEntries(nativeMediaAspectRatioArr);
        }

        public NativeMediaAspectRatio(String str, int i) {
        }

        public static NativeMediaAspectRatio[] values() {
            return (NativeMediaAspectRatio[]) a.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SwipeGestureDirection {
        public static final SwipeGestureDirection DOWN;
        public static final SwipeGestureDirection LEFT;
        public static final SwipeGestureDirection RIGHT;
        public static final SwipeGestureDirection UP;
        public static final /* synthetic */ SwipeGestureDirection[] b;
        public final int a;

        static {
            SwipeGestureDirection swipeGestureDirection = new SwipeGestureDirection("RIGHT", 0, 1);
            RIGHT = swipeGestureDirection;
            SwipeGestureDirection swipeGestureDirection2 = new SwipeGestureDirection("LEFT", 1, 2);
            LEFT = swipeGestureDirection2;
            SwipeGestureDirection swipeGestureDirection3 = new SwipeGestureDirection("UP", 2, 4);
            UP = swipeGestureDirection3;
            SwipeGestureDirection swipeGestureDirection4 = new SwipeGestureDirection("DOWN", 3, 8);
            DOWN = swipeGestureDirection4;
            SwipeGestureDirection[] swipeGestureDirectionArr = {swipeGestureDirection, swipeGestureDirection2, swipeGestureDirection3, swipeGestureDirection4};
            b = swipeGestureDirectionArr;
            EnumEntriesKt.enumEntries(swipeGestureDirectionArr);
        }

        public SwipeGestureDirection(String str, int i, int i2) {
            this.a = i2;
        }

        public static SwipeGestureDirection[] values() {
            return (SwipeGestureDirection[]) b.clone();
        }

        public final int getValue() {
            return this.a;
        }
    }

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    String getHeadline();

    Image getIcon();

    MediaContent getMediaContent();

    void setAdEventCallback(NativeAdEventCallback nativeAdEventCallback);
}
