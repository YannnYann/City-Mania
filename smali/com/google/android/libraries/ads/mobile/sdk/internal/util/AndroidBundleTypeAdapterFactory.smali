###### Class com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory (com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/util/AndroidBundleTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 4

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_18

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_18
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/internal/util/BundleTypeAdapter;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/util/BundleTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object p2
.end method
