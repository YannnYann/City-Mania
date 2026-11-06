package io.bidmachine.rendering.internal.meanbackground;

import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public interface d {

    public static final class a implements d {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        public int a() {
            return this.a;
        }

        @Override // io.bidmachine.rendering.internal.meanbackground.d
        public int a(int i, int i2, int i3) {
            return RangesKt___RangesKt.coerceIn((int) (i3 * (Math.min(i, i2) / a())), 1, Math.max(1, i3));
        }
    }

    int a(int i, int i2, int i3);
}
