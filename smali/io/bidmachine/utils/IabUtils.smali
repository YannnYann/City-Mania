###### Class io.bidmachine.utils.IabUtils (io.bidmachine.utils.IabUtils)
.class public final Lio/bidmachine/utils/IabUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/utils/IabUtils$WhenMappings;
    }
.end annotation


# static fields
.field public static final DEFAULT_CACHE_CONTROL:Lio/bidmachine/iab/CacheControl;

.field public static final INSTANCE:Lio/bidmachine/utils/IabUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/bidmachine/utils/IabUtils;

    invoke-direct {v0}, Lio/bidmachine/utils/IabUtils;-><init>()V

    sput-object v0, Lio/bidmachine/utils/IabUtils;->INSTANCE:Lio/bidmachine/utils/IabUtils;

    .line 1
    sget-object v0, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    sput-object v0, Lio/bidmachine/utils/IabUtils;->DEFAULT_CACHE_CONTROL:Lio/bidmachine/iab/CacheControl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toCacheControl(Ljava/lang/Object;)Lio/bidmachine/iab/CacheControl;
    .registers 4

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lio/bidmachine/utils/IabUtils;->DEFAULT_CACHE_CONTROL:Lio/bidmachine/iab/CacheControl;

    return-object p1

    .line 3
    :cond_5
    instance-of v0, p1, Lio/bidmachine/iab/CacheControl;

    if-eqz v0, :cond_c

    .line 4
    check-cast p1, Lio/bidmachine/iab/CacheControl;

    return-object p1

    .line 7
    :cond_c
    instance-of v0, p1, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    if-eqz v0, :cond_13

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    goto :goto_20

    .line 9
    :cond_13
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 11
    :try_start_18
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    goto :goto_20

    :catchall_1f
    :cond_1f
    move-object p1, v1

    :goto_20
    const/4 v0, -0x1

    if-nez p1, :cond_25

    move p1, v0

    goto :goto_2d

    .line 14
    :cond_25
    sget-object v1, Lio/bidmachine/utils/IabUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_2d
    if-eq p1, v0, :cond_3e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_38

    .line 28
    sget-object p1, Lio/bidmachine/utils/IabUtils;->DEFAULT_CACHE_CONTROL:Lio/bidmachine/iab/CacheControl;

    goto :goto_40

    .line 29
    :cond_38
    sget-object p1, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    goto :goto_40

    .line 30
    :cond_3b
    sget-object p1, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    goto :goto_40

    .line 31
    :cond_3e
    sget-object p1, Lio/bidmachine/utils/IabUtils;->DEFAULT_CACHE_CONTROL:Lio/bidmachine/iab/CacheControl;

    :goto_40
    return-object p1
.end method

.method public final toIabElementStyle(Ljava/lang/Object;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 3

    .line 1
    instance-of v0, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->toIabElementStyle(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.utils.IabUtils.WhenMappings (io.bidmachine.utils.IabUtils$WhenMappings)
.class public final synthetic Lio/bidmachine/utils/IabUtils$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/utils/IabUtils;
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
    invoke-static {}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->values()[Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/protobuf/CreativeLoadingMethod;->Stream:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/protobuf/CreativeLoadingMethod;->PartialLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/bidmachine/utils/IabUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
