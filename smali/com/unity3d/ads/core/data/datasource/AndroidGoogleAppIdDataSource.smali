###### Class com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource (com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;
.super Ljava/lang/Object;
.source "AndroidGoogleAppIdDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/GoogleAppIdDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGoogleAppIdDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGoogleAppIdDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;

.field public static final GOOGLE_APP_ID_RESOURCE_NAME:Ljava/lang/String; = "google_app_id"


# instance fields
.field private final context:Landroid/content/Context;

.field private final googleAppId$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$WDZIDZTEVt2w0OftG5c1jwo5d1I(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->googleAppId_delegate$lambda$3(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->Companion:Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->googleAppId$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final googleAppId_delegate$lambda$3(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)Ljava/lang/String;
    .registers 5

    .line 7
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "google_app_id"

    const-string v2, "string"

    iget-object v3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    goto :goto_2a

    :catchall_1f
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_2a
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    move-object v0, v2

    :cond_32
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4a

    .line 10
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v0, v2

    :goto_3e
    if-eqz v0, :cond_4a

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4a
    return-object v2
.end method


# virtual methods
.method public getGoogleAppId()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->googleAppId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource.Companion (com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource$Companion)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;
.super Ljava/lang/Object;
.source "AndroidGoogleAppIdDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0 (com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->$r8$lambda$WDZIDZTEVt2w0OftG5c1jwo5d1I(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
