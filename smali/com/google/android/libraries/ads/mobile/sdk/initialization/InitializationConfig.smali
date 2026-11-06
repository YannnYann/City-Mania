###### Class com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig (com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;,
        Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

.field public final e:Landroid/os/Bundle;

.field public final f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;Z)V
    .registers 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->b:Z

    .line 7
    iput-boolean p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->c:Z

    .line 8
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    .line 9
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->e:Landroid/os/Bundle;

    .line 10
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    .line 12
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->g:Ljava/lang/String;

    .line 13
    iput-boolean p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;ZI)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;-><init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdapterInitializationConfig()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getMediationAdapterInitializationDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->c:Z

    return v0
.end method

.method public final getNativeAdDebuggerDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->b:Z

    return v0
.end method

.method public final getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    return-object v0
.end method

.method public final getSdkCrashReportingDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->h:Z

    return v0
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig.Builder (com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig$Builder)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/os/Bundle;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->a:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->b:Landroid/os/Bundle;

    .line 5
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    invoke-direct {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
    .registers 11

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->a:Ljava/lang/String;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->d:Z

    .line 4
    iget-boolean v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->e:Z

    .line 5
    iget-object v4, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    .line 6
    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->b:Landroid/os/Bundle;

    .line 7
    iget-object v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->f:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    .line 8
    iget-object v7, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->g:Ljava/lang/String;

    .line 9
    iget-boolean v8, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->h:Z

    const/4 v9, 0x0

    .line 10
    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;-><init>(Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public final disableMediationAdapterInitialization()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->e:Z

    return-object p0
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig.Companion (com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig$Companion)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Companion;-><init>()V

    return-void
.end method
