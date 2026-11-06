###### Class com.unity3d.ads.core.data.model.AdRefreshStateKt (com.unity3d.ads.core.data.model.AdRefreshStateKt)
.class public final Lcom/unity3d/ads/core/data/model/AdRefreshStateKt;
.super Ljava/lang/Object;
.source "AdRefreshState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/AdRefreshStateKt$WhenMappings;
    }
.end annotation


# static fields
.field private static final REUSE_DURING_RELOAD_INVALIDATION_REASON:Ljava/lang/String; = "reuse_during_reload"

.field private static final REUSE_ERROR_INVALIDATION_REASON:Ljava/lang/String; = "reuse_error"

.field private static final REUSE_NO_FILL_INVALIDATION_REASON:Ljava/lang/String; = "reuse_no_fill"

.field private static final REUSE_RELOADED_INVALIDATION_REASON:Ljava/lang/String; = "reuse_reloaded"


# direct methods
.method public static final getInvalidationReason(Lcom/unity3d/ads/core/data/model/AdRefreshState;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshStateKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1c

    .line 17
    const-string p0, "reuse_during_reload"

    return-object p0

    .line 13
    :cond_1c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 16
    :cond_22
    const-string p0, "reuse_error"

    return-object p0

    .line 15
    :cond_25
    const-string p0, "reuse_no_fill"

    return-object p0

    .line 14
    :cond_28
    const-string p0, "reuse_reloaded"

    return-object p0
.end method

###### Class com.unity3d.ads.core.data.model.AdRefreshStateKt.WhenMappings (com.unity3d.ads.core.data.model.AdRefreshStateKt$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/core/data/model/AdRefreshStateKt$WhenMappings;
.super Ljava/lang/Object;
.source "AdRefreshState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/AdRefreshStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/unity3d/ads/core/data/model/AdRefreshState;->values()[Lcom/unity3d/ads/core/data/model/AdRefreshState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_RELOADED:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_NO_FILL:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_ERROR:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRefreshState;->REUSE_DURING_RELOAD:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRefreshStateKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
