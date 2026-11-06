package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class PolymorphicKind extends SerialKind {
    public /* synthetic */ PolymorphicKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public PolymorphicKind() {
        super(null);
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class SEALED extends PolymorphicKind {
        public static final SEALED INSTANCE = new SEALED();

        public SEALED() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: SerialKinds.kt */
    public static final class OPEN extends PolymorphicKind {
        public static final OPEN INSTANCE = new OPEN();

        public OPEN() {
            super(null);
        }
    }
}
