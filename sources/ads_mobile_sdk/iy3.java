package ads_mobile_sdk;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public interface iy3 {
    static byte[] b() {
        short sA = (short) (p30.a(((~1529195746) & 118097808) | 3345166, (1529195746 & 656934035) | 821390159, 1125361885, 184839124) ^ (1037127828 % 1034949299));
        int[] iArr = {350322227, 1077471394, 1759186290, 18931840, 769005128, 1847857001, 24413078, 1982275856, 1275373743};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(p30.a((i2 & (~i)) | i3, (i & i4) | i5, iArr[5], iArr[6]) ^ (iArr[7] % iArr[8]));
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putShort(sA);
        byteBufferAllocate.putInt(1182321202);
        return byteBufferAllocate.array();
    }
}
