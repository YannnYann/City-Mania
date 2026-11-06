###### Class com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo (com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;",
            ">;)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "images"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;->b:Ljava/util/List;

    return-void
.end method
