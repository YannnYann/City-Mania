###### Class com.ironsource.I4 (com.ironsource.I4)
.class public Lcom/ironsource/I4;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static a:Lcom/ironsource/H4;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/H4;

    invoke-direct {v0}, Lcom/ironsource/H4;-><init>()V

    sput-object v0, Lcom/ironsource/I4;->a:Lcom/ironsource/H4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    const-string v2, "reports"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(I)Landroid/database/Cursor;
    .registers 5

    .line 24
    new-instance v0, Lcom/ironsource/I4;

    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/r4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/I4;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 27
    :try_start_e
    sget-object v2, Lcom/ironsource/I4;->a:Lcom/ironsource/H4;

    invoke-virtual {v2, v0}, Lcom/ironsource/H4;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_35

    .line 28
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM REPORTSWHERE id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_32

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object p0

    :catchall_32
    move-exception p0

    move-object v1, v0

    goto :goto_36

    :catchall_35
    move-exception p0

    :goto_36
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 41
    :cond_3b
    throw p0
.end method

.method public static a()V
    .registers 4

    .line 42
    new-instance v0, Lcom/ironsource/I4;

    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/r4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/I4;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 45
    :try_start_e
    sget-object v2, Lcom/ironsource/I4;->a:Lcom/ironsource/H4;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/H4;->a(ZLandroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 46
    const-string v0, "DELETE FROM REPORTS WHERE id >= 0;"

    .line 48
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    .line 51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void

    :catchall_1e
    move-exception v0

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 53
    :cond_24
    throw v0
.end method

.method public static a(Lcom/ironsource/P5;)V
    .registers 7

    .line 1
    new-instance v0, Lcom/ironsource/I4;

    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/r4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/I4;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4
    :try_start_e
    sget-object v2, Lcom/ironsource/I4;->a:Lcom/ironsource/H4;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/H4;->a(ZLandroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_4a

    .line 5
    :try_start_15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/ironsource/P5;->e()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lcom/ironsource/P5;->b()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lcom/ironsource/P5;->d()Ljava/lang/String;

    move-result-object p0

    .line 10
    const-string v5, "stack_trace"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v3, "crash_date"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v3, "crashType"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string p0, "REPORTS"

    invoke-virtual {v0, p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_47

    .line 18
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void

    :catchall_47
    move-exception p0

    move-object v1, v0

    goto :goto_4b

    :catchall_4a
    move-exception p0

    :goto_4b
    if-eqz v1, :cond_53

    .line 20
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 21
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 23
    :cond_53
    throw p0
.end method

.method public static b(I)Lcom/ironsource/P5;
    .registers 6

    .line 1
    new-instance v0, Lcom/ironsource/I4;

    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/r4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/I4;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4
    :try_start_e
    sget-object v2, Lcom/ironsource/I4;->a:Lcom/ironsource/H4;

    invoke-virtual {v2, v0}, Lcom/ironsource/H4;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_51

    .line 5
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM REPORTSWHERE id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v1, 0x0

    .line 14
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 15
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 16
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 17
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 19
    new-instance p0, Lcom/ironsource/P5;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ironsource/P5;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_14 .. :try_end_4a} :catchall_4e

    .line 22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object p0

    :catchall_4e
    move-exception p0

    move-object v1, v0

    goto :goto_52

    :catchall_51
    move-exception p0

    :goto_52
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 24
    :cond_57
    throw p0
.end method

.method public static b()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/P5;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/ironsource/I4;

    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/r4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/I4;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const-string v2, "SELECT * FROM REPORTS ;"

    const/4 v3, 0x0

    .line 30
    :try_start_15
    sget-object v4, Lcom/ironsource/I4;->a:Lcom/ironsource/H4;

    invoke-virtual {v4, v0}, Lcom/ironsource/H4;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_52

    .line 31
    :try_start_1b
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_25
    const/4 v3, 0x0

    .line 35
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    .line 36
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 37
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 38
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 39
    new-instance v7, Lcom/ironsource/P5;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/ironsource/P5;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_4b

    :catchall_48
    move-exception v1

    move-object v3, v0

    goto :goto_53

    .line 43
    :cond_4b
    :goto_4b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catchall {:try_start_1b .. :try_end_4e} :catchall_48

    .line 47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object v1

    :catchall_52
    move-exception v1

    :goto_53
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 49
    :cond_58
    throw v1
.end method

.method public static c()Landroid/database/Cursor;
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/I4;

    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/r4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/I4;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    const-string v1, "SELECT * FROM REPORTS;"

    const/4 v2, 0x0

    .line 6
    :try_start_15
    sget-object v3, Lcom/ironsource/I4;->a:Lcom/ironsource/H4;

    invoke-virtual {v3, v0}, Lcom/ironsource/H4;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_26

    .line 7
    :try_start_1b
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_23

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object v1

    :catchall_23
    move-exception v1

    move-object v2, v0

    goto :goto_27

    :catchall_26
    move-exception v1

    :goto_27
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 12
    :cond_2c
    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS REPORTS(id INTEGER PRIMARY KEY AUTOINCREMENT , stack_trace TEXT NOT NULL, crash_date TEXT NOT NULL,crashType TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 0
    return-void
.end method
