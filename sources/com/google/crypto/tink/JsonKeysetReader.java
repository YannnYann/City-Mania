package com.google.crypto.tink;

import com.google.crypto.tink.internal.JsonParser;
import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.proto.KeyStatusType;
import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import com.google.crypto.tink.subtle.Base64;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.ironsource.C3522b4;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonKeysetReader implements KeysetReader {
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    public final InputStream inputStream;
    public boolean urlSafeBase64 = false;

    public JsonKeysetReader(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public static JsonKeysetReader withString(String input) {
        return new JsonKeysetReader(new ByteArrayInputStream(input.getBytes(UTF_8)));
    }

    @Override // com.google.crypto.tink.KeysetReader
    public Keyset read() throws IOException {
        try {
            try {
                return keysetFromJson(JsonParser.parse(new String(Util.readAll(this.inputStream), UTF_8)).getAsJsonObject());
            } finally {
                InputStream inputStream = this.inputStream;
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (JsonParseException | IllegalStateException e) {
            throw new IOException(e);
        }
    }

    public static int getKeyId(JsonElement element) throws IOException {
        if (!element.isJsonPrimitive()) {
            throw new IOException("invalid key id: not a JSON primitive");
        }
        if (!element.getAsJsonPrimitive().isNumber()) {
            throw new IOException("invalid key id: not a JSON number");
        }
        try {
            long parsedNumberAsLongOrThrow = JsonParser.getParsedNumberAsLongOrThrow(element.getAsJsonPrimitive().getAsNumber());
            if (parsedNumberAsLongOrThrow > 4294967295L || parsedNumberAsLongOrThrow < -2147483648L) {
                throw new IOException("invalid key id");
            }
            return (int) parsedNumberAsLongOrThrow;
        } catch (NumberFormatException e) {
            throw new IOException(e);
        }
    }

    public final Keyset keysetFromJson(JsonObject json) throws IOException {
        if (!json.has(C3522b4.i.W)) {
            throw new JsonParseException("invalid keyset: no key");
        }
        JsonElement jsonElement = json.get(C3522b4.i.W);
        if (!jsonElement.isJsonArray()) {
            throw new JsonParseException("invalid keyset: key must be an array");
        }
        JsonArray asJsonArray = jsonElement.getAsJsonArray();
        if (asJsonArray.size() == 0) {
            throw new JsonParseException("invalid keyset: key is empty");
        }
        Keyset.Builder builderNewBuilder = Keyset.newBuilder();
        if (json.has("primaryKeyId")) {
            builderNewBuilder.setPrimaryKeyId(getKeyId(json.get("primaryKeyId")));
        }
        for (int i = 0; i < asJsonArray.size(); i++) {
            builderNewBuilder.addKey(keyFromJson(asJsonArray.get(i).getAsJsonObject()));
        }
        return builderNewBuilder.build();
    }

    public final Keyset.Key keyFromJson(JsonObject json) throws IOException {
        if (!json.has("keyData") || !json.has("status") || !json.has("keyId") || !json.has("outputPrefixType")) {
            throw new JsonParseException("invalid key");
        }
        JsonElement jsonElement = json.get("keyData");
        if (!jsonElement.isJsonObject()) {
            throw new JsonParseException("invalid key: keyData must be an object");
        }
        return Keyset.Key.newBuilder().setStatus(getStatus(json.get("status").getAsString())).setKeyId(getKeyId(json.get("keyId"))).setOutputPrefixType(getOutputPrefixType(json.get("outputPrefixType").getAsString())).setKeyData(keyDataFromJson(jsonElement.getAsJsonObject())).build();
    }

    public final KeyData keyDataFromJson(JsonObject json) {
        byte[] bArrDecode;
        if (!json.has("typeUrl") || !json.has(C3522b4.i.X) || !json.has("keyMaterialType")) {
            throw new JsonParseException("invalid keyData");
        }
        if (this.urlSafeBase64) {
            bArrDecode = Base64.urlSafeDecode(json.get(C3522b4.i.X).getAsString());
        } else {
            bArrDecode = Base64.decode(json.get(C3522b4.i.X).getAsString());
        }
        return KeyData.newBuilder().setTypeUrl(json.get("typeUrl").getAsString()).setValue(ByteString.copyFrom(bArrDecode)).setKeyMaterialType(getKeyMaterialType(json.get("keyMaterialType").getAsString())).build();
    }

    public static KeyStatusType getStatus(String status) {
        status.getClass();
        switch (status) {
            case "ENABLED":
                return KeyStatusType.ENABLED;
            case "DESTROYED":
                return KeyStatusType.DESTROYED;
            case "DISABLED":
                return KeyStatusType.DISABLED;
            default:
                throw new JsonParseException("unknown status: " + status);
        }
    }

    public static OutputPrefixType getOutputPrefixType(String type) {
        type.getClass();
        switch (type) {
            case "LEGACY":
                return OutputPrefixType.LEGACY;
            case "RAW":
                return OutputPrefixType.RAW;
            case "TINK":
                return OutputPrefixType.TINK;
            case "CRUNCHY":
                return OutputPrefixType.CRUNCHY;
            default:
                throw new JsonParseException("unknown output prefix type: " + type);
        }
    }

    public static KeyData.KeyMaterialType getKeyMaterialType(String type) {
        type.getClass();
        switch (type) {
            case "REMOTE":
                return KeyData.KeyMaterialType.REMOTE;
            case "SYMMETRIC":
                return KeyData.KeyMaterialType.SYMMETRIC;
            case "ASYMMETRIC_PRIVATE":
                return KeyData.KeyMaterialType.ASYMMETRIC_PRIVATE;
            case "ASYMMETRIC_PUBLIC":
                return KeyData.KeyMaterialType.ASYMMETRIC_PUBLIC;
            default:
                throw new JsonParseException("unknown key material type: " + type);
        }
    }
}
