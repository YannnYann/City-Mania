package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.Logger;
import com.ironsource.C3647i2;

/* JADX INFO: loaded from: classes.dex */
public class PackageManagerHelper {
    public static final String TAG = Logger.tagWithPrefix("PackageManagerHelper");

    public static void setComponentEnabled(Context context, Class<?> klazz, boolean enabled) {
        String str = C3647i2.e;
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, klazz.getName()), enabled ? 1 : 2, 1);
            Logger.get().debug(TAG, String.format("%s %s", klazz.getName(), enabled ? "enabled" : C3647i2.e), new Throwable[0]);
        } catch (Exception e) {
            Logger logger = Logger.get();
            String str2 = TAG;
            String name = klazz.getName();
            if (enabled) {
                str = "enabled";
            }
            logger.debug(str2, String.format("%s could not be %s", name, str), e);
        }
    }
}
