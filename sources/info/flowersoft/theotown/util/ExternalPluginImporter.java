package info.flowersoft.theotown.util;

import info.flowersoft.theotown.util.SignatureVerifier;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: ExternalPluginImporter.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ExternalPluginImporter {
    public final PluginFileDecoder decoder;
    public final SignatureVerifier signatureVerifier;

    public ExternalPluginImporter(SignatureVerifier signatureVerifier, PluginFileDecoder decoder) {
        Intrinsics.checkNotNullParameter(signatureVerifier, "signatureVerifier");
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        this.signatureVerifier = signatureVerifier;
        this.decoder = decoder;
    }

    /* JADX INFO: compiled from: ExternalPluginImporter.kt */
    public static final class ExternalPluginData {
        public byte[] content;
        public final long issueTime;
        public final JSONObject manifest;
        public final int privilegeLevel;
        public final int userId;

        public ExternalPluginData(int i, int i2, long j, JSONObject manifest, byte[] bArr) {
            Intrinsics.checkNotNullParameter(manifest, "manifest");
            this.userId = i;
            this.privilegeLevel = i2;
            this.issueTime = j;
            this.manifest = manifest;
            this.content = bArr;
        }

        public final int getUserId() {
            return this.userId;
        }

        public final int getPrivilegeLevel() {
            return this.privilegeLevel;
        }

        public final long getIssueTime() {
            return this.issueTime;
        }

        public final JSONObject getManifest() {
            return this.manifest;
        }

        public final byte[] getContent() {
            return this.content;
        }

        public final void setContent(byte[] bArr) {
            this.content = bArr;
        }
    }

    public final ExternalPluginData load(byte[] data) throws IOException, JSONException {
        Intrinsics.checkNotNullParameter(data, "data");
        SignatureVerifier.Result resultVerify = this.signatureVerifier.verify(new ByteArrayInputStream(data));
        if (!(resultVerify instanceof SignatureVerifier.Result.Success)) {
            throw new IllegalArgumentException("Plugin signature could not be verified. Ensure the file is not corrupted and up-to-date.");
        }
        SignatureVerifier.Result.Success success = (SignatureVerifier.Result.Success) resultVerify;
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(data, success.getBytesToSkip(), data.length - success.getBytesToSkip()));
        int i = dataInputStream.readInt();
        if (1 > i || i >= 16385) {
            throw new IllegalArgumentException(("Invalid header size " + i).toString());
        }
        byte[] bArr = new byte[i];
        if (dataInputStream.read(bArr) != i) {
            throw new IllegalArgumentException(("Could not read header of length " + i).toString());
        }
        JSONObject jSONObject = new JSONObject(new String(bArr, Charsets.UTF_8));
        int i2 = jSONObject.getInt("version");
        if (i2 != 1) {
            throw new IllegalArgumentException(("Invalid version " + i2).toString());
        }
        int i3 = jSONObject.getInt("user");
        if (1 > i3 || i3 > Integer.MAX_VALUE) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        int i4 = jSONObject.getInt("level");
        if (i4 < 0 || i4 >= 3) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        long j = jSONObject.getLong("time");
        if (j <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("manifest");
        if (jSONObject2 == null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return new ExternalPluginData(i3, i4, j, jSONObject2, this.decoder.decode(dataInputStream));
    }
}
