package io.bidmachine;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.XmlResourceParser;
import kotlin.KotlinVersion;

/* JADX INFO: loaded from: classes4.dex */
public final class PlatformData {
    private static volatile PlatformData instance;
    private final Context context;
    final String kotlinVersion = getKotlinVersion();
    private Integer minSdkVersion;

    private PlatformData(Context context) {
        this.context = context.getApplicationContext();
    }

    public static PlatformData get(Context context) {
        PlatformData platformData;
        PlatformData platformData2 = instance;
        if (platformData2 != null) {
            return platformData2;
        }
        synchronized (PlatformData.class) {
            try {
                platformData = instance;
                if (platformData == null) {
                    platformData = new PlatformData(context);
                    instance = platformData;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return platformData;
    }

    private String getKotlinVersion() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private Integer getMinSdkVersionFromApplicationInfo(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo;
            if (applicationInfo != null) {
                return Integer.valueOf(applicationInfo.minSdkVersion);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private Integer getMinSdkVersionFromManifest(Context context) {
        Integer numValueOf = null;
        try {
            XmlResourceParser xmlResourceParserOpenXmlResourceParser = context.getAssets().openXmlResourceParser("AndroidManifest.xml");
            try {
                for (int eventType = xmlResourceParserOpenXmlResourceParser.getEventType(); eventType != 1; eventType = xmlResourceParserOpenXmlResourceParser.next()) {
                    if (eventType == 2) {
                        if ("uses-sdk".equals(xmlResourceParserOpenXmlResourceParser.getName())) {
                            int i = 0;
                            while (true) {
                                if (i >= xmlResourceParserOpenXmlResourceParser.getAttributeCount()) {
                                    break;
                                }
                                if ("minSdkVersion".equals(xmlResourceParserOpenXmlResourceParser.getAttributeName(i))) {
                                    numValueOf = Integer.valueOf(Integer.parseInt(xmlResourceParserOpenXmlResourceParser.getAttributeValue(i)));
                                    break;
                                }
                                i++;
                            }
                        }
                    }
                }
                xmlResourceParserOpenXmlResourceParser.close();
                return numValueOf;
            } finally {
            }
        } catch (Exception unused) {
            return numValueOf;
        }
    }

    public Integer getMinSdkVersion() {
        Integer num = this.minSdkVersion;
        if (num != null) {
            return num;
        }
        Integer minSdkVersionFromApplicationInfo = getMinSdkVersionFromApplicationInfo(this.context);
        this.minSdkVersion = minSdkVersionFromApplicationInfo;
        if (minSdkVersionFromApplicationInfo == null) {
            this.minSdkVersion = getMinSdkVersionFromManifest(this.context);
        }
        return this.minSdkVersion;
    }
}
