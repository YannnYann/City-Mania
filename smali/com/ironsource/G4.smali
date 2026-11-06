###### Class com.ironsource.G4 (com.ironsource.G4)
.class public Lcom/ironsource/G4;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/H7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/G4$a;
    }
.end annotation


# static fields
.field private static f:Lcom/ironsource/G4; = null

.field private static final g:Ljava/lang/String; = " TEXT"

.field private static final h:Ljava/lang/String; = " INTEGER"

.field private static final i:Ljava/lang/String; = ","


# instance fields
.field private final a:Lcom/ironsource/H4;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    new-instance p1, Lcom/ironsource/H4;

    invoke-direct {p1}, Lcom/ironsource/H4;-><init>()V

    iput-object p1, p0, Lcom/ironsource/G4;->a:Lcom/ironsource/H4;

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/ironsource/G4;->b:I

    const/16 p1, 0x190

    .line 9
    iput p1, p0, Lcom/ironsource/G4;->c:I

    .line 11
    const-string p1, "DROP TABLE IF EXISTS events"

    iput-object p1, p0, Lcom/ironsource/G4;->d:Ljava/lang/String;

    .line 13
    const-string p1, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    iput-object p1, p0, Lcom/ironsource/G4;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/ironsource/C5;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 6

    if-eqz p1, :cond_31

    .line 95
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 98
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eventid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p1}, Lcom/ironsource/C5;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/ironsource/C5;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/4 v2, 0x1

    if-eqz p1, :cond_10

    .line 102
    :try_start_6
    iget-object v3, p0, Lcom/ironsource/G4;->a:Lcom/ironsource/H4;

    invoke-virtual {v3, v2, p0}, Lcom/ironsource/H4;->a(ZLandroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object p1

    :catchall_e
    move-exception v3

    goto :goto_18

    .line 104
    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/ironsource/G4;->a:Lcom/ironsource/H4;

    invoke-virtual {v3, v0, p0}, Lcom/ironsource/H4;->a(ZLandroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_e

    monitor-exit p0

    return-object p1

    .line 107
    :goto_18
    :try_start_18
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    add-int/2addr v1, v2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2c

    mul-int/lit16 v2, v1, 0x190

    int-to-long v2, v2

    .line 110
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    :catchall_2a
    move-exception p1

    goto :goto_2d

    .line 111
    :cond_2c
    throw v3

    :goto_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2a

    throw p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/G4;
    .registers 5

    const-class v0, Lcom/ironsource/G4;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/G4;->f:Lcom/ironsource/G4;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Lcom/ironsource/G4;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/G4;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/G4;->f:Lcom/ironsource/G4;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 4
    :cond_11
    :goto_11
    sget-object p0, Lcom/ironsource/G4;->f:Lcom/ironsource/G4;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_6f

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 36
    :try_start_8
    invoke-direct {p0, v0}, Lcom/ironsource/G4;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_79

    .line 38
    :try_start_c
    const-string v6, "type = ?"

    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 40
    const-string v10, "timestamp ASC"

    .line 43
    const-string v4, "events"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_65

    .line 49
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    :goto_26
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_62

    .line 53
    const-string p1, "eventid"

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_35

    goto :goto_26

    .line 57
    :cond_35
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 59
    const-string v0, "timestamp"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_42

    goto :goto_26

    .line 63
    :cond_42
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 65
    const-string v0, "data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4f

    goto :goto_26

    .line 69
    :cond_4f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v6, Lcom/ironsource/C5;

    invoke-direct {v6, p1, v4, v5, v0}, Lcom/ironsource/C5;-><init>(IJLjava/lang/String;)V

    .line 72
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_26

    :catchall_5f
    move-exception v0

    move-object p1, v0

    goto :goto_7c

    .line 77
    :cond_62
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_5f

    .line 84
    :cond_65
    :try_start_65
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_72

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_72

    :catchall_6f
    move-exception v0

    move-object p1, v0

    goto :goto_bb

    .line 85
    :cond_72
    :goto_72
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_76
    .catchall {:try_start_65 .. :try_end_76} :catchall_6f

    if-eqz p1, :cond_a0

    goto :goto_9d

    :catchall_79
    move-exception v0

    move-object p1, v0

    move-object v3, v2

    .line 86
    :goto_7c
    :try_start_7c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 87
    const-string v0, "IronSource"

    const-string v4, "Exception while loading events: "

    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_a2

    if-eqz v2, :cond_95

    .line 90
    :try_start_8c
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_95

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_95
    if-eqz v3, :cond_a0

    .line 91
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 85
    :goto_9d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_a0
    .catchall {:try_start_8c .. :try_end_a0} :catchall_6f

    .line 91
    :cond_a0
    monitor-exit p0

    return-object v1

    :catchall_a2
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_af

    .line 92
    :try_start_a6
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_af

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_af
    if-eqz v3, :cond_ba

    .line 93
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 94
    :cond_ba
    throw p1

    :goto_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_6f

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/C5;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_68

    .line 5
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_3a

    if-eqz v0, :cond_a

    goto :goto_68

    :cond_a
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    :try_start_c
    invoke-direct {p0, v0}, Lcom/ironsource/G4;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_3c

    .line 11
    :try_start_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/C5;

    .line 13
    invoke-direct {p0, v2, p2}, Lcom/ironsource/G4;->a(Lcom/ironsource/C5;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    .line 17
    const-string v3, "events"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2e

    goto :goto_14

    :catchall_2e
    move-exception p1

    move-object v1, v0

    goto :goto_3d

    :cond_31
    if-eqz v0, :cond_57

    .line 26
    :try_start_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3a

    if-eqz p1, :cond_57

    goto :goto_54

    :catchall_3a
    move-exception p1

    goto :goto_66

    :catchall_3c
    move-exception p1

    .line 27
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 28
    const-string p2, "IronSource"

    const-string v0, "Exception while saving events: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_59

    if-eqz v1, :cond_57

    .line 31
    :try_start_4d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_57

    move-object v0, v1

    .line 26
    :goto_54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_3a

    .line 31
    :cond_57
    monitor-exit p0

    return-void

    :catchall_59
    move-exception p1

    if-eqz v1, :cond_65

    :try_start_5c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 32
    :cond_65
    throw p1

    :goto_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_3a

    throw p1

    :cond_68
    :goto_68
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    const-string v0, "type = ?"

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    const/4 v1, 0x1

    .line 5
    :try_start_8
    invoke-direct {p0, v1}, Lcom/ironsource/G4;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1c

    .line 7
    :try_start_c
    const-string v2, "events"

    invoke-virtual {v1, v2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 12
    :try_start_11
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_18

    if-eqz p1, :cond_37

    goto :goto_34

    :catchall_18
    move-exception p1

    goto :goto_46

    :catchall_1a
    move-exception p1

    goto :goto_1e

    :catchall_1c
    move-exception p1

    const/4 v1, 0x0

    .line 13
    :goto_1e
    :try_start_1e
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 14
    const-string v0, "IronSource"

    const-string v2, "Exception while clearing events: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_39

    if-eqz v1, :cond_37

    .line 16
    :try_start_2e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 12
    :goto_34
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_18

    .line 16
    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    if-eqz v1, :cond_45

    :try_start_3c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 17
    :cond_45
    throw p1

    :goto_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_18

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 1
    const-string p2, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ironsource/G4;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

###### Class com.ironsource.G4.a (com.ironsource.G4$a)
.class abstract Lcom/ironsource/G4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/G4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "events"

.field public static final b:I = 0x4

.field public static final c:Ljava/lang/String; = "eventid"

.field public static final d:Ljava/lang/String; = "timestamp"

.field public static final e:Ljava/lang/String; = "type"

.field public static final f:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
