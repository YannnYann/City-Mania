package io.bidmachine.rendering.internal.meanbackground;

import android.graphics.Bitmap;
import android.view.View;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface f {
    Object a(CoroutineContext coroutineContext, View view, Continuation continuation);

    public static final class a {
        public final Object a;
        public final Bitmap b;

        public a(Object obj, Bitmap bitmap) {
            this.a = obj;
            this.b = bitmap;
        }

        public final Bitmap a() {
            return this.b;
        }

        public final Object b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b);
        }

        public int hashCode() {
            Object obj = this.a;
            int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
            Bitmap bitmap = this.b;
            return iHashCode + (bitmap != null ? bitmap.hashCode() : 0);
        }

        public String toString() {
            return "CollectResult(result=" + this.a + ", bitmapToRecycle=" + this.b + ')';
        }

        public /* synthetic */ a(Object obj, Bitmap bitmap, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : obj, (i & 2) != 0 ? null : bitmap);
        }
    }
}
