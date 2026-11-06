###### Class com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource (com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;
.super Ljava/lang/Object;
.source "AndroidAppSetIdDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAppSetIdDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAppSetIdDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,33:1\n214#2,5:34\n*S KotlinDebug\n*F\n+ 1 AndroidAppSetIdDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource\n*L\n23#1:34,5\n*E\n"
.end annotation


# instance fields
.field private final _appSetIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationContext:Landroid/content/Context;

.field private final isCollecting:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DHjpTkIdTN0vlfqorGy_jE89JRI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->invoke$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P2PCuDJ46uvK8iqTv0iUysFmd3U(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;Lcom/google/android/gms/appset/AppSetIdInfo;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->invoke$lambda$1(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;Lcom/google/android/gms/appset/AppSetIdInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->applicationContext:Landroid/content/Context;

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->isCollecting:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p1, 0x0

    .line 18
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->_appSetIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;Lcom/google/android/gms/appset/AppSetIdInfo;)Lkotlin/Unit;
    .registers 3

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getId(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->_appSetIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    .line 26
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAppSetId()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->_appSetIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final invoke()V
    .registers 5

    .line 23
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->isCollecting:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 215
    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 216
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_36

    .line 26
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;)V

    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_36

    :catchall_36
    :goto_36
    return-void
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource$$ExternalSyntheticLambda0 (com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->$r8$lambda$P2PCuDJ46uvK8iqTv0iUysFmd3U(Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;Lcom/google/android/gms/appset/AppSetIdInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource$$ExternalSyntheticLambda1 (com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidAppSetIdDataSource;->$r8$lambda$DHjpTkIdTN0vlfqorGy_jE89JRI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method
