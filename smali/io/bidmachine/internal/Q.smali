###### Class io.bidmachine.internal.Q (io.bidmachine.internal.Q)
.class public final Lio/bidmachine/internal/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/Q$b;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/internal/Q$b;


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;


# direct methods
.method public static synthetic $r8$lambda$BrHV6jPtl5_qZH62bQ9EwwlD_Ic(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/internal/Q;->b(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h030APEOcj8x84txfiT04AiBb34(Lio/bidmachine/internal/S;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/internal/Q;->a(Lio/bidmachine/internal/S;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pk9DckWHeQvxDHvItpzbWfG07Yg(Lio/bidmachine/internal/S;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/internal/Q;->b(Lio/bidmachine/internal/S;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xxFos827b3Y40xOVuw4rrGlnLyQ(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/internal/Q;->b(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/Q$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/internal/Q$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/internal/Q;->b:Lio/bidmachine/internal/Q$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lio/bidmachine/internal/Q;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string v0, "currentVersionProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/internal/Q;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 4
    sget-object p1, Lio/bidmachine/internal/Q$a;->a:Lio/bidmachine/internal/Q$a;

    .line 5
    :cond_6
    invoke-direct {p0, p1}, Lio/bidmachine/internal/Q;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final a(Lio/bidmachine/internal/S;)Ljava/lang/String;
    .registers 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pause session, milestone updated:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lio/bidmachine/internal/S;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New session, milestone updated:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;
    .registers 4

    const-string v0, "$from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrade detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;
    .registers 5

    const-string v0, "$from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrade detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", last max version: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/bidmachine/SessionManagerKtWrapper;)Lio/bidmachine/internal/S;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lio/bidmachine/internal/Q;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/bidmachine/util/version/Version;

    .line 2
    sget-object v2, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v2, v1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->getHistoryVersionMilestoneList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 3
    invoke-virtual {v2, v1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->getCurrentVersionMilestone(Landroid/content/Context;)Lio/bidmachine/internal/S;

    move-result-object v15

    const/16 v28, 0x0

    if-eqz v15, :cond_20

    .line 4
    invoke-virtual {v15}, Lio/bidmachine/internal/S;->f()Lio/bidmachine/util/version/Version;

    move-result-object v3

    goto :goto_22

    :cond_20
    move-object/from16 v3, v28

    .line 5
    :goto_22
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    return-object v15

    .line 10
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/SessionManagerKtWrapper;->getSessionStartTime()J

    move-result-wide v6

    move-object v5, v3

    .line 11
    new-instance v3, Lio/bidmachine/internal/S;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v8, v5

    const/4 v5, 0x0

    move-object/from16 v16, v8

    move-wide v8, v6

    move-object/from16 v29, v14

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v13}, Lio/bidmachine/internal/S;-><init>(Lio/bidmachine/util/version/Version;IJJJJ)V

    .line 21
    invoke-static/range {v29 .. v29}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    if-eqz v15, :cond_5f

    .line 24
    invoke-virtual {v15}, Lio/bidmachine/internal/S;->a()J

    move-result-wide v24

    const/16 v26, 0xf

    const/16 v27, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-static/range {v15 .. v27}, Lio/bidmachine/internal/S;->a(Lio/bidmachine/internal/S;Lio/bidmachine/util/version/Version;IJJJJILjava/lang/Object;)Lio/bidmachine/internal/S;

    move-result-object v8

    .line 25
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_5f
    invoke-virtual {v2, v1, v5}, Lio/bidmachine/BidMachineSharedPreferenceKt;->setHistoryVersionMilestoneList(Landroid/content/Context;Ljava/util/List;)V

    if-nez v14, :cond_68

    .line 32
    invoke-virtual {v0, v1, v6, v7}, Lio/bidmachine/internal/Q;->a(Landroid/content/Context;J)V

    return-object v3

    .line 34
    :cond_68
    invoke-virtual {v4, v14}, Lio/bidmachine/util/version/Version;->compareTo(Lio/bidmachine/util/version/Version;)I

    move-result v1

    if-gez v1, :cond_72

    invoke-virtual {v0, v14, v4}, Lio/bidmachine/internal/Q;->a(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V

    return-object v3

    .line 107
    :cond_72
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7d

    goto :goto_ab

    .line 109
    :cond_7d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8a

    :goto_87
    move-object/from16 v28, v2

    goto :goto_ab

    .line 111
    :cond_8a
    move-object v5, v2

    check-cast v5, Lio/bidmachine/internal/S;

    .line 112
    invoke-virtual {v5}, Lio/bidmachine/internal/S;->f()Lio/bidmachine/util/version/Version;

    move-result-object v5

    .line 184
    :cond_91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 185
    move-object v7, v6

    check-cast v7, Lio/bidmachine/internal/S;

    .line 186
    invoke-virtual {v7}, Lio/bidmachine/internal/S;->f()Lio/bidmachine/util/version/Version;

    move-result-object v7

    .line 260
    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_a4

    move-object v2, v6

    move-object v5, v7

    .line 264
    :cond_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_91

    goto :goto_87

    .line 265
    :goto_ab
    check-cast v28, Lio/bidmachine/internal/S;

    if-eqz v28, :cond_b5

    invoke-virtual/range {v28 .. v28}, Lio/bidmachine/internal/S;->f()Lio/bidmachine/util/version/Version;

    move-result-object v1

    if-nez v1, :cond_b6

    :cond_b5
    move-object v1, v14

    .line 266
    :cond_b6
    invoke-virtual {v0, v14, v4, v1}, Lio/bidmachine/internal/Q;->a(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V

    return-object v3
.end method

.method public final a(Landroid/content/Context;J)V
    .registers 7

    .line 268
    sget-object v0, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v0, p1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->hasBMIFV(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "VersionManager"

    if-eqz v1, :cond_10

    .line 269
    const-string p1, "Migration from old version detected"

    invoke-static {v2, p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_10
    const-string v1, "Install detected"

    invoke-static {v2, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/BidMachineSharedPreferenceKt;->setSdkInstallTime(Landroid/content/Context;J)V

    return-void
.end method

.method public final a(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V
    .registers 4

    .line 274
    new-instance v0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V

    const-string p1, "VersionManager"

    invoke-static {p1, v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public final a(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V
    .registers 5

    .line 273
    new-instance v0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V

    const-string p1, "VersionManager"

    invoke-static {p1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lio/bidmachine/SessionManagerKtWrapper;)V
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sessionManager"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v1, v0}, Lio/bidmachine/BidMachineSharedPreferenceKt;->getCurrentVersionMilestone(Landroid/content/Context;)Lio/bidmachine/internal/S;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 3
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/SessionManagerKtWrapper;->getSessionDurationMs()J

    move-result-wide v9

    const/16 v13, 0x2f

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    .line 4
    invoke-static/range {v2 .. v14}, Lio/bidmachine/internal/S;->a(Lio/bidmachine/internal/S;Lio/bidmachine/util/version/Version;IJJJJILjava/lang/Object;)Lio/bidmachine/internal/S;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    .line 7
    :goto_2b
    invoke-virtual {v1, v0, v2}, Lio/bidmachine/BidMachineSharedPreferenceKt;->setCurrentVersionMilestone(Landroid/content/Context;Lio/bidmachine/internal/S;)V

    .line 8
    new-instance v0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/internal/S;)V

    const-string v1, "VersionManager"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Lio/bidmachine/SessionManagerKtWrapper;)V
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sessionManager"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p2}, Lio/bidmachine/internal/Q;->a(Landroid/content/Context;Lio/bidmachine/SessionManagerKtWrapper;)Lio/bidmachine/internal/S;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 3
    invoke-virtual {v2}, Lio/bidmachine/internal/S;->e()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 4
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/SessionManagerKtWrapper;->getSessionStartTime()J

    move-result-wide v7

    .line 5
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/SessionManagerKtWrapper;->getSessionDurationMs()J

    move-result-wide v9

    .line 6
    invoke-virtual {v2}, Lio/bidmachine/internal/S;->a()J

    move-result-wide v11

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    .line 7
    invoke-static/range {v2 .. v14}, Lio/bidmachine/internal/S;->a(Lio/bidmachine/internal/S;Lio/bidmachine/util/version/Version;IJJJJILjava/lang/Object;)Lio/bidmachine/internal/S;

    move-result-object v1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 14
    :goto_31
    sget-object v2, Lio/bidmachine/BidMachineSharedPreferenceKt;->INSTANCE:Lio/bidmachine/BidMachineSharedPreferenceKt;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/BidMachineSharedPreferenceKt;->setCurrentVersionMilestone(Landroid/content/Context;Lio/bidmachine/internal/S;)V

    .line 15
    new-instance v0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/internal/S;)V

    const-string v1, "VersionManager"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void
.end method

###### Class io.bidmachine.internal.Q.a (io.bidmachine.internal.Q$a)
.class public final Lio/bidmachine/internal/Q$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/Q;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/Q$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/Q$a;

    invoke-direct {v0}, Lio/bidmachine/internal/Q$a;-><init>()V

    sput-object v0, Lio/bidmachine/internal/Q$a;->a:Lio/bidmachine/internal/Q$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/version/Version;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/util/version/Version;->Companion:Lio/bidmachine/util/version/Version$Companion;

    const-string v1, "3.8.0"

    invoke-virtual {v0, v1}, Lio/bidmachine/util/version/Version$Companion;->parseVersion(Ljava/lang/String;)Lio/bidmachine/util/version/Version;

    move-result-object v0

    if-nez v0, :cond_15

    .line 2
    const-string v0, "Unexpected version parsing error: 3.8.0"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/bidmachine/util/version/Version;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lio/bidmachine/util/version/Version;-><init>(III)V

    :cond_15
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/Q$a;->a()Lio/bidmachine/util/version/Version;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.Q.b (io.bidmachine.internal.Q$b)
.class public final Lio/bidmachine/internal/Q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/internal/Q$b;-><init>()V

    return-void
.end method

###### Class io.bidmachine.internal.Q$$ExternalSyntheticLambda0 (io.bidmachine.internal.Q$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/internal/Q$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/internal/S;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/internal/S;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/internal/S;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/internal/S;

    invoke-static {v0}, Lio/bidmachine/internal/Q;->$r8$lambda$pk9DckWHeQvxDHvItpzbWfG07Yg(Lio/bidmachine/internal/S;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.Q$$ExternalSyntheticLambda1 (io.bidmachine.internal.Q$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/internal/Q$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/internal/S;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/internal/S;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/internal/S;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/internal/S;

    invoke-static {v0}, Lio/bidmachine/internal/Q;->$r8$lambda$h030APEOcj8x84txfiT04AiBb34(Lio/bidmachine/internal/S;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.Q$$ExternalSyntheticLambda2 (io.bidmachine.internal.Q$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/util/version/Version;

.field public final synthetic f$1:Lio/bidmachine/util/version/Version;

.field public final synthetic f$2:Lio/bidmachine/util/version/Version;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/util/version/Version;

    iput-object p2, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/util/version/Version;

    iput-object p3, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;->f$2:Lio/bidmachine/util/version/Version;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/util/version/Version;

    iget-object v1, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/util/version/Version;

    iget-object v2, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda2;->f$2:Lio/bidmachine/util/version/Version;

    invoke-static {v0, v1, v2}, Lio/bidmachine/internal/Q;->$r8$lambda$BrHV6jPtl5_qZH62bQ9EwwlD_Ic(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.Q$$ExternalSyntheticLambda3 (io.bidmachine.internal.Q$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/internal/Q$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/util/version/Version;

.field public final synthetic f$1:Lio/bidmachine/util/version/Version;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/util/version/Version;

    iput-object p2, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/util/version/Version;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/util/version/Version;

    iget-object v1, p0, Lio/bidmachine/internal/Q$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/util/version/Version;

    invoke-static {v0, v1}, Lio/bidmachine/internal/Q;->$r8$lambda$xxFos827b3Y40xOVuw4rrGlnLyQ(Lio/bidmachine/util/version/Version;Lio/bidmachine/util/version/Version;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
