package io.bidmachine.util;

import android.graphics.Bitmap;
import android.graphics.Rect;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BitmapUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BitmapUtils {
    public static final BitmapUtils INSTANCE = new BitmapUtils();

    public final Rect clampRect(Bitmap bitmap, Rect rect) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        if (rect == null) {
            return new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        }
        Rect rect2 = new Rect(Math.max(0, rect.left), Math.max(0, rect.top), Math.min(bitmap.getWidth(), rect.right), Math.min(bitmap.getHeight(), rect.bottom));
        if (rect2.isEmpty()) {
            return null;
        }
        return rect2;
    }
}
