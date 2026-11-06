package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum BrokenCreativeAlgorithmType implements KeyHolder {
    ColorHistogram("color_histogram"),
    BrightnessVariance("brightness_variance"),
    EdgeDetection("edge_detection");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final BrokenCreativeAlgorithmType get(String str) {
            return (BrokenCreativeAlgorithmType) UtilsKt.find(BrokenCreativeAlgorithmType.values(), str);
        }

        public Companion() {
        }
    }

    BrokenCreativeAlgorithmType(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }
}
