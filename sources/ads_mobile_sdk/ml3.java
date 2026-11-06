package ads_mobile_sdk;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ml3 implements vv2 {
    public final ts3 a;

    @Override // ads_mobile_sdk.vv2
    public final boolean a(iv2 iv2Var) {
        return false;
    }

    public ml3(ts3 ts3Var) {
        this.a = ts3Var;
    }

    @Override // ads_mobile_sdk.vv2
    public final boolean b(iv2 iv2Var) {
        if (iv2Var != null && !iv2Var.equals(iv2.x())) {
            short sW = (short) iv2Var.z().y().w();
            int iX = iv2Var.z().y().x();
            byte[] versionArray = iy3.b();
            Intrinsics.checkNotNullParameter(versionArray, "versionArray");
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(6);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putShort(sW);
            byteBufferAllocate.putInt(iX);
            byte[] bArrArray = byteBufferAllocate.array();
            Intrinsics.checkNotNullExpressionValue(bArrArray, "array(...)");
            if (Arrays.equals(bArrArray, versionArray)) {
                return true;
            }
            this.a.b(lq0.EVENT_ID_ORCAS_VALIDATOR_INIT_VM_VERSION_MISMATCH);
            return false;
        }
        this.a.b(lq0.EVENT_ID_ORCAS_VALIDATOR_INIT_METADATA_NOT_FOUND);
        return false;
    }
}
