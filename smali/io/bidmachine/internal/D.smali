###### Class io.bidmachine.internal.D (io.bidmachine.internal.D)
.class public abstract Lio/bidmachine/internal/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/D$a;
    }
.end annotation


# direct methods
.method public static final a(Lio/bidmachine/internal/C;)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/internal/D$a;->$EnumSwitchMapping$1:[I

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

    .line 6
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NONE:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    :cond_1f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 7
    :cond_25
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_CCPA_OPT_OUT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 8
    :cond_28
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_GDPR_NO_CONSENT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 9
    :cond_2b
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NON_PERSONALIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 10
    :cond_2e
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_COPPA:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0
.end method

###### Class io.bidmachine.internal.D.a (io.bidmachine.internal.D$a)
.class public abstract synthetic Lio/bidmachine/internal/D$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->values()[Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_COPPA:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NON_PERSONALIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_GDPR_NO_CONSENT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    const/4 v4, 0x4

    :try_start_23
    sget-object v5, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_CCPA_OPT_OUT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    const/4 v5, 0x5

    :try_start_2c
    sget-object v6, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NONE:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lio/bidmachine/internal/D$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/internal/C;->values()[Lio/bidmachine/internal/C;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3d
    sget-object v6, Lio/bidmachine/internal/C;->a:Lio/bidmachine/internal/C;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_45} :catch_45

    :catch_45
    :try_start_45
    sget-object v1, Lio/bidmachine/internal/C;->b:Lio/bidmachine/internal/C;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v1, Lio/bidmachine/internal/C;->c:Lio/bidmachine/internal/C;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_55} :catch_55

    :catch_55
    :try_start_55
    sget-object v1, Lio/bidmachine/internal/C;->d:Lio/bidmachine/internal/C;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v1, Lio/bidmachine/internal/C;->e:Lio/bidmachine/internal/C;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    sput-object v0, Lio/bidmachine/internal/D$a;->$EnumSwitchMapping$1:[I

    return-void
.end method
