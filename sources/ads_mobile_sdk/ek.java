package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ek {
    public final Context a;
    public final ja1 b;
    public final ApplicationInfo c;
    public final AtomicReference d;

    public ek(Context context, ja1 initializationConfigWrapper) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.a = context;
        this.b = initializationConfigWrapper;
        this.c = context.getApplicationInfo();
        this.d = new AtomicReference();
    }

    public final v01 a() {
        String applicationId;
        JsonObject jsonObject = new JsonObject();
        Drawable applicationIcon = null;
        try {
            jsonObject.addProperty("name", this.a.getPackageManager().getApplicationLabel(this.a.getPackageManager().getApplicationInfo(this.c.packageName, 0)).toString());
            jsonObject.addProperty(HandleInvocationsFromAdViewer.KEY_PACKAGE_NAME, this.c.packageName);
            InitializationConfig initializationConfigA = this.b.a();
            String strEncodeToString = "";
            if (initializationConfigA == null || (applicationId = initializationConfigA.getApplicationId()) == null) {
                applicationId = "";
            }
            jsonObject.addProperty("adMobAppId", applicationId);
            CharSequence charSequence = (CharSequence) this.d.get();
            if (charSequence == null || StringsKt__StringsKt.isBlank(charSequence)) {
                AtomicReference atomicReference = this.d;
                try {
                    ApplicationInfo applicationInfo = this.a.getPackageManager().getApplicationInfo(this.a.getApplicationInfo().packageName, 0);
                    Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
                    applicationIcon = this.a.getPackageManager().getApplicationIcon(applicationInfo);
                } catch (PackageManager.NameNotFoundException unused) {
                }
                if (applicationIcon != null) {
                    applicationIcon.setBounds(0, 0, 256, 256);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
                    Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                    applicationIcon.draw(new Canvas(bitmapCreateBitmap));
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                }
                atomicReference.set(strEncodeToString);
            }
            CharSequence charSequence2 = (CharSequence) this.d.get();
            if (charSequence2 != null && !StringsKt__StringsKt.isBlank(charSequence2)) {
                jsonObject.addProperty(C3522b4.i.H0, (String) this.d.get());
                jsonObject.addProperty("iconWidthPx", (Number) 256);
                jsonObject.addProperty("iconHeightPx", (Number) 256);
            }
            return new q01(jsonObject);
        } catch (PackageManager.NameNotFoundException e) {
            return new j01(e, null, null, 6);
        }
    }
}
