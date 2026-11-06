package com.facebook.ads.redexgen.X;

import com.unity3d.services.UnityAdsConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.i3, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C2592i3 {
    public static String[] A00 = {"hoB1igfVPU9JnNSBr9B", "BIJxr28k3OsQ1hbgnADBj7nTM43iNW2b", "XhbhJOOlToJAV6bLKe9xJE6rnjLDaXwB", "Ai7pO7q6fV1OXOdOzwWRl6", "RZggFUjvUewxLCFgLoN1ffQ31qPXerGd", "9UHWzlIgRO4GNquxTktW3gAE3r7Oi", "i0CXZzaqZr9eC6ppyRleN2q6vrKslV2O", "u1lwG8lV9aZVCFzTMPajgUqTKFLRd3mJ"};

    public /* synthetic */ C2592i3(AbstractC12661i abstractC12661i) {
        this();
    }

    public C2592i3() {
    }

    @JvmStatic
    public final boolean A00(float f, float f2, int i, int i2) {
        if (i > 0 && i2 > 0 && f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && f <= i) {
            String[] strArr = A00;
            if (strArr[7].charAt(22) != strArr[6].charAt(22)) {
                throw new RuntimeException();
            }
            A00[5] = "el5JLUcfa1RVby6C1Xko";
            if (f2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && f2 <= i2) {
                return true;
            }
        }
        return false;
    }
}
