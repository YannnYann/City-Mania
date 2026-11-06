package ads_mobile_sdk;

import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.RegistryConfiguration;
import com.google.crypto.tink.TinkJsonProtoKeysetFormat;
import com.google.crypto.tink.signature.SignatureConfig;
import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class pv2 {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public PublicKeyVerify b = null;
    public PublicKeyVerify c = null;

    public final void a() throws GeneralSecurityException {
        if (this.a.getAndSet(true)) {
            return;
        }
        try {
            SignatureConfig.register();
            this.b = (PublicKeyVerify) TinkJsonProtoKeysetFormat.parseKeysetWithoutSecret(new String(hi.a("eyJwcmltYXJ5S2V5SWQiOjMzMTUxOTk4MTksImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQVNoRGZwOUM5QjcrMU1nMmJQbHJ5WExPOHVScDd6YWZJMldSYURmR1ZqVmlJaEFJNFZzTmVrcCs0bVY0d2toZlhVb3pQZWs5TjgxcUdIK2plNnhjOFpoQkhQIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMzE1MTk5ODE5LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0=", false))).getPrimitive(RegistryConfiguration.get(), PublicKeyVerify.class);
            this.c = (PublicKeyVerify) TinkJsonProtoKeysetFormat.parseKeysetWithoutSecret(new String(hi.a("eyJwcmltYXJ5S2V5SWQiOjMwODI3ODA4ODgsImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQkEyWW5HaWFpc3pEcGtJcWpjalorUTJ2alFUUldQZjhFcTlkZVlhNFpKa3lJaEFCQWFESTd6QWJkQXVpQmlnOWdHSkJ1VTUzSGg5Z0RCa0t2amswS2tabDhjIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMDgyNzgwODg4LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0=", false))).getPrimitive(RegistryConfiguration.get(), PublicKeyVerify.class);
        } catch (Exception e) {
            throw new GeneralSecurityException("Failed to verify program", e);
        }
    }

    public final boolean a(db dbVar) {
        byte[] bArrI = dbVar.w().x().x().i();
        byte[] bArrI2 = dbVar.w().w().i();
        try {
            a();
            PublicKeyVerify publicKeyVerify = this.b;
            if (publicKeyVerify != null) {
                publicKeyVerify.verify(bArrI, bArrI2);
                return true;
            }
            throw new GeneralSecurityException();
        } catch (GeneralSecurityException unused) {
            try {
                PublicKeyVerify publicKeyVerify2 = this.c;
                if (publicKeyVerify2 != null) {
                    publicKeyVerify2.verify(bArrI, bArrI2);
                    return true;
                }
            } catch (GeneralSecurityException unused2) {
            }
            return false;
        }
    }
}
