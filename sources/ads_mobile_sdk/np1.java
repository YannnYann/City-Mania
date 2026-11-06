package ads_mobile_sdk;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class np1 extends IOException {
    private tw1 a;
    private boolean b;

    public static np1 b() {
        return new np1("Protocol message end-group tag did not match expected tag.");
    }

    public static np1 c() {
        return new np1("Protocol message contained an invalid tag (zero).");
    }

    public static np1 d() {
        return new np1("Protocol message had invalid UTF-8.");
    }

    public static a e() {
        return new a("Protocol message tag had invalid wire type.");
    }

    public static np1 f() {
        return new np1("CodedInputStream encountered a malformed varint.");
    }

    public static np1 g() {
        return new np1("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static np1 h() {
        return new np1("Failed to parse the message.");
    }

    public static np1 i() {
        return new np1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    public static np1 k() {
        return new np1("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
    }

    public static np1 l() {
        return new np1("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public np1(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.a = null;
    }

    public np1(String str) {
        super(str);
        this.a = null;
    }

    public void j() {
        this.b = true;
    }

    public boolean a() {
        return this.b;
    }

    public np1(String str, IOException iOException) {
        super(str, iOException);
        this.a = null;
    }

    public static class a extends np1 {
        public a(String str) {
            super(str);
        }
    }

    public np1 a(tw1 tw1Var) {
        this.a = tw1Var;
        return this;
    }
}
