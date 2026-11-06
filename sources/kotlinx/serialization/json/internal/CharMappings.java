package kotlinx.serialization.json.internal;

import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: compiled from: AbstractJsonLexer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CharMappings {
    public static final byte[] CHAR_TO_TOKEN;
    public static final char[] ESCAPE_2_CHAR;
    public static final CharMappings INSTANCE;

    static {
        CharMappings charMappings = new CharMappings();
        INSTANCE = charMappings;
        ESCAPE_2_CHAR = new char[Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE];
        CHAR_TO_TOKEN = new byte[Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE];
        charMappings.initEscape();
        charMappings.initCharToToken();
    }

    public final void initEscape() {
        for (int i = 0; i < 32; i++) {
            initC2ESC(i, 'u');
        }
        initC2ESC(8, 'b');
        initC2ESC(9, 't');
        initC2ESC(10, 'n');
        initC2ESC(12, 'f');
        initC2ESC(13, 'r');
        initC2ESC('/', '/');
        initC2ESC('\"', '\"');
        initC2ESC('\\', '\\');
    }

    public final void initCharToToken() {
        for (int i = 0; i < 33; i++) {
            initC2TC(i, (byte) 127);
        }
        initC2TC(9, (byte) 3);
        initC2TC(10, (byte) 3);
        initC2TC(13, (byte) 3);
        initC2TC(32, (byte) 3);
        initC2TC(',', (byte) 4);
        initC2TC(':', (byte) 5);
        initC2TC('{', (byte) 6);
        initC2TC('}', (byte) 7);
        initC2TC('[', (byte) 8);
        initC2TC(']', (byte) 9);
        initC2TC('\"', (byte) 1);
        initC2TC('\\', (byte) 2);
    }

    public final void initC2ESC(int i, char c) {
        if (c != 'u') {
            ESCAPE_2_CHAR[c] = (char) i;
        }
    }

    public final void initC2ESC(char c, char c2) {
        initC2ESC((int) c, c2);
    }

    public final void initC2TC(int i, byte b) {
        CHAR_TO_TOKEN[i] = b;
    }

    public final void initC2TC(char c, byte b) {
        initC2TC((int) c, b);
    }
}
