###### Class com.ironsource.C3765od (com.ironsource.od)
.class public final Lcom/ironsource/od;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/O7;
.implements Lcom/ironsource/O7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/od$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/J3;

.field private final b:Lcom/ironsource/R4;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ironsource/od;-><init>(Lcom/ironsource/J3;Lcom/ironsource/R4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/J3;Lcom/ironsource/R4;)V
    .registers 4

    const-string v0, "cappingService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deliveryHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    .line 4
    iput-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/J3;Lcom/ironsource/R4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_f

    .line 5
    new-instance v0, Lcom/ironsource/J3;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/J3;-><init>(Lcom/ironsource/t4;Lcom/ironsource/N7;Lcom/ironsource/U8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_f
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_18

    .line 6
    new-instance p2, Lcom/ironsource/R4;

    invoke-direct {p2}, Lcom/ironsource/R4;-><init>()V

    .line 7
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/ironsource/od;-><init>(Lcom/ironsource/J3;Lcom/ironsource/R4;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/L3;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/td;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/td;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    invoke-virtual {v0}, Lcom/ironsource/td;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    invoke-virtual {p2, p1}, Lcom/ironsource/R4;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/ironsource/L3;->d()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2a

    if-eqz v0, :cond_22

    monitor-exit p0

    return-object p2

    .line 6
    :cond_22
    :try_start_22
    iget-object p2, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    invoke-virtual {p2, p1}, Lcom/ironsource/J3;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cappingType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cappingConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/ironsource/td;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/td;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    invoke-virtual {v0}, Lcom/ironsource/td;->a()Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object p2, Lcom/ironsource/od$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_38

    const/4 v0, 0x3

    if-ne p2, v0, :cond_30

    goto :goto_38

    :cond_30
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :catchall_36
    move-exception p1

    goto :goto_47

    .line 11
    :cond_38
    :goto_38
    iget-object p2, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    invoke-virtual {p2, p1, p3, p4}, Lcom/ironsource/J3;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_45

    .line 12
    :cond_3f
    iget-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    invoke-virtual {p2, p1, p3, p4}, Lcom/ironsource/R4;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_36

    :goto_45
    monitor-exit p0

    return-object p1

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_36

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/td;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/td;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    invoke-virtual {v0}, Lcom/ironsource/td;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/ironsource/od;->b:Lcom/ironsource/R4;

    invoke-virtual {p2, p1}, Lcom/ironsource/R4;->a(Ljava/lang/String;)Lcom/ironsource/L3;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/ironsource/L3;->d()Z

    move-result p2

    if-nez p2, :cond_28

    .line 4
    iget-object p2, p0, Lcom/ironsource/od;->a:Lcom/ironsource/J3;

    invoke-virtual {p2, p1}, Lcom/ironsource/J3;->b(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception p1

    goto :goto_2a

    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_26

    throw p1
.end method

###### Class com.ironsource.C3765od.a (com.ironsource.od$a)
.class public final synthetic Lcom/ironsource/od$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/od;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/N3;->values()[Lcom/ironsource/N3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/ironsource/N3;->c:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/ironsource/N3;->a:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/ironsource/N3;->b:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/ironsource/od$a;->a:[I

    return-void
.end method
