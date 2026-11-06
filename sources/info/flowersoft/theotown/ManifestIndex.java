package info.flowersoft.theotown;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: ManifestIndex.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ManifestIndex {
    public static final ManifestIndex INSTANCE = new ManifestIndex();
    public static Lazy<? extends Map<String, ? extends JSONObject>> sha256ToManifestMapping = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: info.flowersoft.theotown.ManifestIndex$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ManifestIndex.sha256ToManifestMapping$lambda$0();
        }
    });

    public static final Map sha256ToManifestMapping$lambda$0() {
        return INSTANCE.load();
    }

    public final Map<String, JSONObject> load() throws IOException, JSONException {
        String strBin2hex;
        byte[] bArrDigest;
        Files files = Gdx.files;
        String str = "manifests.cjson:ae6bb9dcccb3ee65a2a5e1964c8ca37b";
        try {
            Charset charsetForName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = str.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            try {
                bArrDigest = MessageDigest.getInstance("md5").digest(bytes);
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                bArrDigest = new byte[0];
            }
            strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            strBin2hex = "";
        }
        InputStreamReader inputStreamReader = new InputStreamReader(new GZIPInputStream(files.internal(strBin2hex).read()), Charsets.UTF_8);
        JSONObject jSONObject = new JSONObject(TextStreamsKt.readText(inputStreamReader));
        inputStreamReader.close();
        Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
        JSONObject jSONObject2 = jSONObject.getJSONObject("manifests");
        JSONArray jSONArrayNames = jSONObject2.names();
        int length = jSONArrayNames.length();
        for (int i = 0; i < length; i++) {
            String string = jSONArrayNames.getString(i);
            Intrinsics.checkNotNull(string);
            JSONObject jSONObject3 = jSONObject2.getJSONObject(string);
            Intrinsics.checkNotNullExpressionValue(jSONObject3, "getJSONObject(...)");
            mapCreateMapBuilder.put(string, jSONObject3);
        }
        return MapsKt__MapsJVMKt.build(mapCreateMapBuilder);
    }

    public final JSONObject resolve(String sha256) {
        Intrinsics.checkNotNullParameter(sha256, "sha256");
        return sha256ToManifestMapping.getValue().get(sha256);
    }

    public static final Map unload$lambda$0() {
        return INSTANCE.load();
    }

    public final void unload() {
        sha256ToManifestMapping = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: info.flowersoft.theotown.ManifestIndex$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ManifestIndex.unload$lambda$0();
            }
        });
    }
}
