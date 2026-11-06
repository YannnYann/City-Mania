###### Class ads_mobile_sdk.oa1 (ads_mobile_sdk.oa1)
.class public final Lads_mobile_sdk/oa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/lm0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/f0;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f0;Ljava/util/Set;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/oa1;->a:Lads_mobile_sdk/f0;

    iput-object p2, p0, Lads_mobile_sdk/oa1;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/oa1;->a:Lads_mobile_sdk/f0;

    iget-object v1, p0, Lads_mobile_sdk/oa1;->b:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v2, "newForegroundStateChangeListeners"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    monitor-enter v0

    :try_start_d
    iget-object v2, v0, Lads_mobile_sdk/f0;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    monitor-exit v0

    .line 144
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_16
    move-exception v1

    .line 145
    monitor-exit v0

    throw v1
.end method
