###### Class com.unity3d.ads.core.log.LogLevelKt (com.unity3d.ads.core.log.LogLevelKt)
.class public final Lcom/unity3d/ads/core/log/LogLevelKt;
.super Ljava/lang/Object;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/log/LogLevelKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final toLogLevelInternal(Lcom/unity3d/ads/LogLevel;)Lcom/unity3d/ads/core/log/LogLevelInternal;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/unity3d/ads/core/log/LogLevelKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1f

    .line 25
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->TRACE:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 20
    :cond_1f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 24
    :cond_25
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 23
    :cond_28
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 22
    :cond_2b
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->ERROR:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0

    .line 21
    :cond_2e
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DISABLED:Lcom/unity3d/ads/core/log/LogLevelInternal;

    return-object p0
.end method

###### Class com.unity3d.ads.core.log.LogLevelKt.WhenMappings (com.unity3d.ads.core.log.LogLevelKt$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/core/log/LogLevelKt$WhenMappings;
.super Ljava/lang/Object;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/log/LogLevelKt;
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
    invoke-static {}, Lcom/unity3d/ads/LogLevel;->values()[Lcom/unity3d/ads/LogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/ads/LogLevel;->DISABLED:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/ads/LogLevel;->ERROR:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/ads/LogLevel;->INFO:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/unity3d/ads/LogLevel;->DEBUG:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/unity3d/ads/LogLevel;->TRACE:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lcom/unity3d/ads/core/log/LogLevelKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
