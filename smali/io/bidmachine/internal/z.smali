###### Class io.bidmachine.internal.z (io.bidmachine.internal.z)
.class public final Lio/bidmachine/internal/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/z$a;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/z;

    invoke-direct {v0}, Lio/bidmachine/internal/z;-><init>()V

    sput-object v0, Lio/bidmachine/internal/z;->a:Lio/bidmachine/internal/z;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/bidmachine/internal/y;Ljava/util/List;)Lio/bidmachine/internal/w;
    .registers 5

    const-string v0, "privacyRestrictionMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kinds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lio/bidmachine/internal/C;->e:Lio/bidmachine/internal/C;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 75
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Lio/bidmachine/internal/C;

    .line 78
    sget-object v2, Lio/bidmachine/internal/z;->a:Lio/bidmachine/internal/z;

    invoke-virtual {v2, p0, v1}, Lio/bidmachine/internal/z;->a(Lio/bidmachine/internal/y;Lio/bidmachine/internal/C;)Lio/bidmachine/internal/w;

    move-result-object v1

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 154
    :cond_3b
    sget-object p0, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p0}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object p0

    .line 230
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/internal/w;

    .line 231
    invoke-virtual {p0, v0}, Lio/bidmachine/internal/w;->a(Lio/bidmachine/internal/w;)Lio/bidmachine/internal/w;

    move-result-object p0

    goto :goto_45

    :cond_56
    return-object p0
.end method


# virtual methods
.method public final a()Lio/bidmachine/internal/w;
    .registers 2

    .line 248
    sget-object v0, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {v0}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;
    .registers 3

    .line 242
    sget-object v0, Lio/bidmachine/internal/z$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 245
    sget-object p1, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p1}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 246
    :cond_1e
    sget-object p1, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p1}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    .line 247
    :cond_25
    sget-object p1, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p1}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/internal/y;Lio/bidmachine/internal/C;)Lio/bidmachine/internal/w;
    .registers 4

    .line 232
    sget-object v0, Lio/bidmachine/internal/z$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_31

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_27

    const/4 v0, 0x4

    if-eq p2, v0, :cond_22

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1c

    .line 237
    invoke-virtual {p0}, Lio/bidmachine/internal/z;->a()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    :cond_1c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 238
    :cond_22
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/z;->a(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    .line 239
    :cond_27
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/z;->c(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    .line 240
    :cond_2c
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/z;->d(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    .line 241
    :cond_31
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/z;->b(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;
    .registers 10

    .line 1
    sget-object v0, Lio/bidmachine/internal/z$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 4
    sget-object p1, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p1}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 5
    :cond_1e
    sget-object p1, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p1}, Lio/bidmachine/internal/w$a;->a()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    .line 6
    :cond_25
    new-instance v0, Lio/bidmachine/internal/w;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/internal/w;-><init>(Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final c(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;
    .registers 11

    .line 1
    sget-object v0, Lio/bidmachine/internal/z$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 16
    sget-object p1, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p1}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 17
    :cond_1e
    new-instance v0, Lio/bidmachine/internal/w;

    .line 18
    sget-object v1, Lio/bidmachine/internal/w$b;->b:Lio/bidmachine/internal/w$b;

    .line 19
    sget-object v2, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v1

    .line 20
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/internal/w;-><init>(Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;)V

    return-object v0

    .line 21
    :cond_2b
    new-instance v1, Lio/bidmachine/internal/w;

    .line 22
    sget-object v3, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    .line 23
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/internal/w;-><init>(Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final d(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/w;
    .registers 11

    .line 1
    sget-object v0, Lio/bidmachine/internal/z$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 16
    sget-object p1, Lio/bidmachine/internal/w;->f:Lio/bidmachine/internal/w$a;

    invoke-virtual {p1}, Lio/bidmachine/internal/w$a;->b()Lio/bidmachine/internal/w;

    move-result-object p1

    return-object p1

    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 17
    :cond_1e
    new-instance v0, Lio/bidmachine/internal/w;

    .line 18
    sget-object v1, Lio/bidmachine/internal/w$b;->b:Lio/bidmachine/internal/w$b;

    .line 19
    sget-object v2, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v1

    .line 20
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/internal/w;-><init>(Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;)V

    return-object v0

    .line 21
    :cond_2b
    new-instance v1, Lio/bidmachine/internal/w;

    .line 22
    sget-object v3, Lio/bidmachine/internal/w$b;->c:Lio/bidmachine/internal/w$b;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    .line 23
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/internal/w;-><init>(Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;Lio/bidmachine/internal/w$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

###### Class io.bidmachine.internal.z.a (io.bidmachine.internal.z$a)
.class public abstract synthetic Lio/bidmachine/internal/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/z;
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
    .registers 6

    .line 1
    invoke-static {}, Lio/bidmachine/internal/C;->values()[Lio/bidmachine/internal/C;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/internal/C;->a:Lio/bidmachine/internal/C;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/internal/C;->b:Lio/bidmachine/internal/C;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/bidmachine/internal/C;->c:Lio/bidmachine/internal/C;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v4, Lio/bidmachine/internal/C;->d:Lio/bidmachine/internal/C;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v4, Lio/bidmachine/internal/C;->e:Lio/bidmachine/internal/C;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v0, v4
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lio/bidmachine/internal/z$a;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/internal/y;->values()[Lio/bidmachine/internal/y;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3d
    sget-object v4, Lio/bidmachine/internal/y;->c:Lio/bidmachine/internal/y;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_45} :catch_45

    :catch_45
    :try_start_45
    sget-object v1, Lio/bidmachine/internal/y;->d:Lio/bidmachine/internal/y;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v1, Lio/bidmachine/internal/y;->e:Lio/bidmachine/internal/y;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_55} :catch_55

    :catch_55
    sput-object v0, Lio/bidmachine/internal/z$a;->$EnumSwitchMapping$1:[I

    return-void
.end method
