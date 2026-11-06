###### Class com.unity3d.ads.MediationInfo (com.unity3d.ads.MediationInfo)
.class public final Lcom/unity3d/ads/MediationInfo;
.super Ljava/lang/Object;
.source "MediationInfo.kt"


# instance fields
.field private final adapterVersion:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/unity3d/ads/MediationInfo;->version:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/unity3d/ads/MediationInfo;->adapterVersion:Ljava/lang/String;

    .line 17
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toLowerCase(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unity3d/ads/MediationInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/MediationInfo;->adapterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/MediationInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/unity3d/ads/MediationInfo;->version:Ljava/lang/String;

    return-object v0
.end method
