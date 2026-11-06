package kotlinx.serialization.json.internal;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Composers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    public final boolean forceQuoting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(JsonWriter writer, boolean z) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(int i) {
        boolean z = this.forceQuoting;
        int iM2792constructorimpl = UInt.m2792constructorimpl(i);
        if (z) {
            printQuoted(Long.toString(((long) iM2792constructorimpl) & 4294967295L, 10));
        } else {
            print(Long.toString(((long) iM2792constructorimpl) & 4294967295L, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j) {
        boolean z = this.forceQuoting;
        long jM2814constructorimpl = ULong.m2814constructorimpl(j);
        if (z) {
            printQuoted(ComposerForUnsignedNumbers$$ExternalSyntheticBackport4.m(jM2814constructorimpl, 10));
        } else {
            print(ComposerForUnsignedNumbers$$ExternalSyntheticBackport5.m(jM2814constructorimpl, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b) {
        boolean z = this.forceQuoting;
        String strM2773toStringimpl = UByte.m2773toStringimpl(UByte.m2770constructorimpl(b));
        if (z) {
            printQuoted(strM2773toStringimpl);
        } else {
            print(strM2773toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s) {
        boolean z = this.forceQuoting;
        String strM2839toStringimpl = UShort.m2839toStringimpl(UShort.m2836constructorimpl(s));
        if (z) {
            printQuoted(strM2839toStringimpl);
        } else {
            print(strM2839toStringimpl);
        }
    }
}
