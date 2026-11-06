package ads_mobile_sdk;

import ads_mobile_sdk.er0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class tz0<T extends er0> {
    private static String a = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    public static <T extends er0> T a(Class<T> cls) {
        ClassLoader classLoader = tz0.class.getClassLoader();
        if (cls.equals(er0.class)) {
            try {
                try {
                    dr0.a(Class.forName(a, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0]));
                    throw null;
                } catch (ReflectiveOperationException e) {
                    throw new IllegalStateException(e);
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        Iterator it = ServiceLoader.load(tz0.class, classLoader).iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            try {
                dr0.a(it.next());
                throw null;
            } catch (ServiceConfigurationError e2) {
                Logger.getLogger(oy.class.getName()).log(Level.SEVERE, "Unable to load " + cls.getSimpleName(), (Throwable) e2);
            }
        }
        if (arrayList.size() == 1) {
            return (T) arrayList.get(0);
        }
        if (arrayList.size() == 0) {
            return null;
        }
        try {
            return (T) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
        } catch (ReflectiveOperationException e3) {
            throw new IllegalStateException(e3);
        }
    }
}
