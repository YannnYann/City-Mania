###### Class io.bidmachine.internal.F (io.bidmachine.internal.F)
.class public abstract Lio/bidmachine/internal/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/F$a;
    }
.end annotation


# direct methods
.method public static final a(Lio/bidmachine/protobuf/sdk/RestrictionMode;)Lio/bidmachine/internal/y;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/internal/F$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_18
    sget-object p0, Lio/bidmachine/internal/y;->e:Lio/bidmachine/internal/y;

    return-object p0

    .line 5
    :cond_1b
    sget-object p0, Lio/bidmachine/internal/y;->d:Lio/bidmachine/internal/y;

    return-object p0

    .line 6
    :cond_1e
    sget-object p0, Lio/bidmachine/internal/y;->c:Lio/bidmachine/internal/y;

    return-object p0
.end method

.method public static final a(Lio/bidmachine/internal/y;)Lio/bidmachine/protobuf/sdk/RestrictionMode;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lio/bidmachine/internal/F$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p0, v0, :cond_19

    .line 10
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_OPEN:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    return-object p0

    :cond_19
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 11
    :cond_1f
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_MODERATE:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    return-object p0

    .line 12
    :cond_22
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_STRICT:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    return-object p0
.end method

###### Class io.bidmachine.internal.F.a (io.bidmachine.internal.F$a)
.class public abstract synthetic Lio/bidmachine/internal/F$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/F;
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
    .registers 5

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->values()[Lio/bidmachine/protobuf/sdk/RestrictionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_STRICT:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_MODERATE:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_OPEN:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/internal/F$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/internal/y;->values()[Lio/bidmachine/internal/y;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2b
    sget-object v4, Lio/bidmachine/internal/y;->c:Lio/bidmachine/internal/y;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v1, Lio/bidmachine/internal/y;->d:Lio/bidmachine/internal/y;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    sget-object v1, Lio/bidmachine/internal/y;->e:Lio/bidmachine/internal/y;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_43} :catch_43

    :catch_43
    sput-object v0, Lio/bidmachine/internal/F$a;->$EnumSwitchMapping$1:[I

    return-void
.end method
