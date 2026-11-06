package info.flowersoft.theotown.util;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import vm2.Globals;
import vm2.LuaValue;

/* JADX INFO: compiled from: FileDecoder.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class FileDecoder {
    public final BytesCallbackFunction decode(final InputStream src, String fileName) throws IOException {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeInt(457995617);
        dataOutputStream.writeInt(1375797508);
        dataOutputStream.writeInt(67372032);
        final byte[] byteArray = byteArrayOutputStream.toByteArray();
        InputStream inputStream = new FilterInputStream(byteArray, src) { // from class: info.flowersoft.theotown.util.FileDecoder$decode$combined$1
            public final /* synthetic */ byte[] $headerBytes;
            public int pos;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(src);
                this.$headerBytes = byteArray;
                this.pos = -byteArray.length;
            }

            public final int getPos() {
                return this.pos;
            }

            public final void setPos(int i) {
                this.pos = i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() {
                int i = this.pos;
                if (i < 0) {
                    byte[] bArr = this.$headerBytes;
                    int length = bArr.length;
                    this.pos = i + 1;
                    return bArr[length + i];
                }
                return super.read();
            }
        };
        Globals globals = TempLua.INSTANCE.getGlobals();
        BytesCallbackFunction bytesCallbackFunction = new BytesCallbackFunction();
        globals.load(inputStream, ".", "b", globals).call(LuaValue.valueOf(fileName), bytesCallbackFunction);
        return bytesCallbackFunction;
    }
}
