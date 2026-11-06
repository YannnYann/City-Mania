package j$.time;

import com.ironsource.adapters.unityads.UnityAdsConstants;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class y extends x {
    public static final /* synthetic */ int d = 0;
    private static final long serialVersionUID = 8386373296231747096L;
    private final String b;
    private final transient j$.time.zone.f c;

    static y a0(String str, boolean z) {
        j$.time.zone.f fVarB;
        Objects.requireNonNull(str, UnityAdsConstants.ZONE_ID_KEY);
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt != '/' || i == 0) && ((cCharAt < '0' || cCharAt > '9' || i == 0) && ((cCharAt != '~' || i == 0) && ((cCharAt != '.' || i == 0) && ((cCharAt != '_' || i == 0) && ((cCharAt != '+' || i == 0) && (cCharAt != '-' || i == 0))))))))) {
                    throw new c("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                }
            }
            try {
                fVarB = j$.time.zone.j.b(str, true);
            } catch (j$.time.zone.g e) {
                if (z) {
                    throw e;
                }
                fVarB = null;
            }
            return new y(str, fVarB);
        }
        throw new c("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
    }

    y(String str, j$.time.zone.f fVar) {
        this.b = str;
        this.c = fVar;
    }

    @Override // j$.time.x
    public final String s() {
        return this.b;
    }

    @Override // j$.time.x
    public final j$.time.zone.f C() {
        j$.time.zone.f fVar = this.c;
        return fVar != null ? fVar : j$.time.zone.j.b(this.b, false);
    }

    private Object writeReplace() {
        return new s((byte) 7, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.x
    final void Z(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(7);
        objectOutput.writeUTF(this.b);
    }

    final void b0(DataOutput dataOutput) {
        dataOutput.writeUTF(this.b);
    }
}
