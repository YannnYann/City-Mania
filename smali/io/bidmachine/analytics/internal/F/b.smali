###### Class io.bidmachine.analytics.internal.F.b (io.bidmachine.analytics.internal.F.b)
.class public final Lio/bidmachine/analytics/internal/F/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/F/b$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/analytics/internal/F/b$a;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/F/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/F/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/F/b;->b:Lio/bidmachine/analytics/internal/F/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/F/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/F/b;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/F/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 21

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 28
    const-string v2, "id"

    const-string v3, "name"

    const-string v4, "timestamp"

    const-string v5, "session_id"

    const-string v6, "data"

    const-string v7, "error"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v10

    .line 31
    const-string v15, "timestamp DESC"
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_8c

    move-object/from16 v2, p0

    .line 33
    :try_start_1b
    iget-object v8, v2, Lio/bidmachine/analytics/internal/F/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "monitor_record"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_84

    .line 34
    :goto_2b
    :try_start_2b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_77

    if-eqz v0, :cond_7a

    .line 35
    :try_start_31
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    .line 36
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    .line 37
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    .line 38
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v0, 0x3

    .line 39
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    .line 40
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v4, 0x5

    .line 41
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 43
    new-instance v10, Lio/bidmachine/analytics/internal/G/c;

    .line 48
    invoke-static {v0, v5}, Lio/bidmachine/analytics/internal/I/g;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 49
    invoke-static {v4, v5}, Lio/bidmachine/analytics/internal/I/g;->a([BLjava/lang/String;)[B

    move-result-object v11

    move-object v4, v10

    move-object v10, v0

    .line 50
    invoke-direct/range {v4 .. v11}, Lio/bidmachine/analytics/internal/G/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B[B)V

    .line 58
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_31 .. :try_end_6b} :catchall_6c

    goto :goto_2b

    :catchall_6c
    move-exception v0

    :try_start_6d
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_77
    move-exception v0

    move-object v4, v0

    goto :goto_86

    .line 78
    :cond_7a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_77

    const/4 v4, 0x0

    .line 79
    :try_start_7d
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_84

    goto :goto_98

    :catchall_84
    move-exception v0

    goto :goto_8f

    .line 92
    :goto_86
    :try_start_86
    throw v4
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v0

    :try_start_88
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_84

    :catchall_8c
    move-exception v0

    move-object/from16 v2, p0

    .line 93
    :goto_8f
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_98
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final a(ZLjava/util/List;)Ljava/lang/Object;
    .registers 11

    .line 130
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    const-string v1, "is_reserved"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    iget-object v3, p0, Lio/bidmachine/analytics/internal/F/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Lio/bidmachine/analytics/internal/F/b$b;

    invoke-direct {v5, p0, v0}, Lio/bidmachine/analytics/internal/F/b$b;-><init>(Lio/bidmachine/analytics/internal/F/b;Landroid/content/ContentValues;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 142
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, v0, v1}, Lio/bidmachine/analytics/internal/F/b;->a(ZLjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/bidmachine/analytics/internal/G/c;)Ljava/lang/Object;
    .registers 6

    .line 2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    const-string v1, "id"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v1, "name"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    const-string v1, "session_id"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v1, "data"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->a()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/bidmachine/analytics/internal/I/g;->b([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 9
    const-string v1, "error"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->b()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/G/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/bidmachine/analytics/internal/I/g;->b([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 12
    iget-object p1, p0, Lio/bidmachine/analytics/internal/F/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "monitor_record"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_0 .. :try_end_5f} :catchall_60

    return-object p1

    :catchall_60
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/analytics/internal/F/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 4

    .line 17
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_b

    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 19
    :goto_c
    const-string p3, "name = ? AND session_id = ? AND is_reserved = 0"

    invoke-direct {p0, p3, p1, p2}, Lio/bidmachine/analytics/internal/F/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 7

    .line 154
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 155
    iget-object v0, p0, Lio/bidmachine/analytics/internal/F/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    const-string v1, "monitor_record"

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session_id != ? OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "name NOT IN"

    invoke-static {p2, v3}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 165
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-object p1

    :catchall_33
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/Object;
    .registers 9

    .line 144
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 145
    iget-object v2, p0, Lio/bidmachine/analytics/internal/F/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Lio/bidmachine/analytics/internal/F/b$c;

    invoke-direct {v4, p0}, Lio/bidmachine/analytics/internal/F/b$c;-><init>(Lio/bidmachine/analytics/internal/F/b;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 152
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 153
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object p1

    :catchall_17
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lio/bidmachine/analytics/internal/F/b;->a(ZLjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lio/bidmachine/analytics/internal/F/b;->a(ZLjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.F.b.a (io.bidmachine.analytics.internal.F.b$a)
.class public final Lio/bidmachine/analytics/internal/F/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/F/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/F/b$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.F.b.C1113b (io.bidmachine.analytics.internal.F.b$b)
.class final Lio/bidmachine/analytics/internal/F/b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/F/b;->a(ZLjava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/F/b;

.field final synthetic b:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/F/b;Landroid/content/ContentValues;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/F/b$b;->a:Lio/bidmachine/analytics/internal/F/b;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/F/b$b;->b:Landroid/content/ContentValues;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/F/b$b;->a:Lio/bidmachine/analytics/internal/F/b;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/F/b;->a(Lio/bidmachine/analytics/internal/F/b;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/F/b$b;->b:Landroid/content/ContentValues;

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 4
    const-string v3, "id IN"

    invoke-static {p1, v3}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_12
    move-object v3, v2

    :goto_13
    if-eqz p1, :cond_3c

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 62
    check-cast v4, Lio/bidmachine/analytics/internal/G/c;

    .line 63
    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/G/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 121
    :cond_38
    invoke-static {v2}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_3c
    const-string p1, "monitor_record"

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/F/b$b;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.F.b.c (io.bidmachine.analytics.internal.F.b$c)
.class final Lio/bidmachine/analytics/internal/F/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/F/b;->a(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/F/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/F/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/F/b$c;->a:Lio/bidmachine/analytics/internal/F/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/F/b$c;->a:Lio/bidmachine/analytics/internal/F/b;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/F/b;->a(Lio/bidmachine/analytics/internal/F/b;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 3
    const-string v2, "id IN"

    invoke-static {p1, v2}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_10
    move-object v2, v1

    :goto_11
    if-eqz p1, :cond_3a

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 50
    check-cast v3, Lio/bidmachine/analytics/internal/G/c;

    .line 51
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/G/c;->c()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 98
    :cond_36
    invoke-static {v1}, Lio/bidmachine/analytics/internal/I/a;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_3a
    const-string p1, "monitor_record"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/F/b$c;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
