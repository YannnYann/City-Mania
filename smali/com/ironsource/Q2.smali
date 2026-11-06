###### Class com.ironsource.Q2 (com.ironsource.Q2)
.class public final Lcom/ironsource/Q2;
.super Lcom/ironsource/g0;
.source "SourceFile"


# instance fields
.field private final g:Lcom/unity3d/mediation/LevelPlayAdSize;

.field private final h:Ljava/lang/Boolean;

.field private final i:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 13

    .line 8
    sget-object v0, Lcom/ironsource/z7;->a:Lcom/ironsource/z7;

    invoke-virtual {v0}, Lcom/ironsource/z7;->a()Ljava/util/UUID;

    move-result-object v2

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/Q2;-><init>(Ljava/util/UUID;Ljava/lang/String;Lcom/ironsource/md;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/ironsource/Tf;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Lcom/ironsource/md;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/ironsource/Tf;Ljava/lang/Double;)V
    .registers 16

    const-string v0, "adId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p7

    move-object v6, p8

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/g0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;Ljava/lang/String;Lcom/ironsource/md;Lcom/ironsource/Tf;Ljava/lang/Double;)V

    .line 5
    iput-object p4, p0, Lcom/ironsource/Q2;->g:Lcom/unity3d/mediation/LevelPlayAdSize;

    .line 6
    iput-object p5, p0, Lcom/ironsource/Q2;->h:Ljava/lang/Boolean;

    .line 7
    iput-object p6, p0, Lcom/ironsource/Q2;->i:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/String;Lcom/ironsource/md;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/ironsource/Tf;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x4

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_c

    .line 1
    sget-object p4, Lcom/unity3d/mediation/LevelPlayAdSize;->BANNER:Lcom/unity3d/mediation/LevelPlayAdSize;

    :cond_c
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_11

    move-object p5, v0

    :cond_11
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_16

    move-object p6, v0

    :cond_16
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_1b

    move-object p7, v0

    :cond_1b
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_29

    move-object p9, v0

    :goto_20
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_2b

    :cond_29
    move-object p9, p8

    goto :goto_20

    .line 2
    :goto_2b
    invoke-direct/range {p1 .. p9}, Lcom/ironsource/Q2;-><init>(Ljava/util/UUID;Ljava/lang/String;Lcom/ironsource/md;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/ironsource/Tf;Ljava/lang/Double;)V

    return-void
.end method


# virtual methods
.method public final i()Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Q2;->g:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object v0
.end method

.method public final j()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Q2;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final k()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Q2;->i:Ljava/lang/Long;

    return-object v0
.end method
