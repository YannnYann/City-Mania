###### Class com.google.android.gms.measurement.internal.zzgl (com.google.android.gms.measurement.internal.zzgl)
.class public final Lcom/google/android/gms/measurement/internal/zzgl;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field public static final zza:[Ljava/lang/String;


# instance fields
.field public final zzb:Lcom/google/android/gms/measurement/internal/zzgj;

.field public zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 0
    const-string v0, "app_version_int"

    const-string v1, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    const-string v2, "app_version"

    const-string v3, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgj;-><init>(Lcom/google/android/gms/measurement/internal/zzgl;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:Lcom/google/android/gms/measurement/internal/zzgj;

    return-void
.end method

.method public static synthetic zzr()[Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final zze()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception v0

    goto :goto_29

    :cond_28
    return-void

    :goto_29
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/measurement/internal/zzbh;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zza(Lcom/google/android/gms/measurement/internal/zzbh;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_24
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzj(Lcom/google/android/gms/measurement/internal/zzpl;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzpm;->zza(Lcom/google/android/gms/measurement/internal/zzpl;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v1

    :cond_24
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzk(Lcom/google/android/gms/measurement/internal/zzah;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzah(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 3
    array-length v1, p1

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_1e

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1e
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzl(Lcom/google/android/gms/measurement/internal/zzbf;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzah(Landroid/os/Parcelable;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Null default event parameters; not writing to database"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v1

    :cond_1b
    array-length v2, p1

    const/high16 v3, 0x20000

    if-le v2, v3, :cond_2e

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Default event parameters too long for local database. Sending directly to service"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v1

    :cond_2e
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzm(I)Ljava/util/List;
    .registers 31

    move-object/from16 v1, p0

    .line 1
    const-string v2, "Error reading entries from local database"

    const-string v3, "entry"

    const-string v4, "type"

    const-string v5, "rowid"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_13

    return-object v6

    :cond_13
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzq()Z

    move-result v0

    if-eqz v0, :cond_3b9

    const/4 v8, 0x5

    const/4 v9, 0x0

    move v11, v8

    move v10, v9

    :goto_22
    if-ge v10, v8, :cond_3a7

    const/4 v12, 0x1

    .line 4
    :try_start_25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_25 .. :try_end_29} :catch_36d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_25 .. :try_end_29} :catch_353
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_29} :catch_326
    .catchall {:try_start_25 .. :try_end_29} :catchall_321

    if-nez v13, :cond_4e

    :try_start_2b
    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    return-object v6

    :catchall_2e
    move-exception v0

    goto/16 :goto_318

    :catch_31
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    goto/16 :goto_31b

    :catch_3b
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    goto/16 :goto_31d

    :catch_44
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    goto/16 :goto_31f

    .line 5
    :cond_4e
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2b .. :try_end_53} :catch_44
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2b .. :try_end_53} :catch_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_53} :catch_31
    .catchall {:try_start_2b .. :try_end_53} :catchall_2e

    :try_start_53
    const-string v14, "messages"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v17

    const-string v20, "rowid desc"

    const-string v21, "1"

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 6
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_304

    .line 7
    :try_start_6b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v22, -0x1

    if-eqz v0, :cond_85

    .line 9
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_7b

    .line 8
    :try_start_77
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_8a

    :catchall_7b
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    goto/16 :goto_30d

    :cond_85
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-wide/from16 v15, v22

    :goto_8a
    cmp-long v0, v15, v22

    if-eqz v0, :cond_9d

    const-string v0, "rowid<?"

    new-array v14, v12, [Ljava/lang/String;

    .line 11
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    goto :goto_a1

    :cond_9d
    move-object/from16 v16, v6

    move-object/from16 v17, v16

    :goto_a1
    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 12
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v15

    move/from16 p1, v12

    .line 13
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfy;->zzaW:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 14
    invoke-virtual {v15, v6, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v15

    const/16 v25, 0x4

    const/16 v26, 0x3

    const/4 v6, 0x2

    if-eqz v15, :cond_ca

    new-array v0, v8, [Ljava/lang/String;

    aput-object v5, v0, v9

    aput-object v4, v0, p1

    aput-object v3, v0, v6

    const-string v15, "app_version"

    aput-object v15, v0, v26

    const-string v15, "app_version_int"

    aput-object v15, v0, v25

    :cond_ca
    move-object v15, v0

    move-object v0, v14

    const-string v14, "messages"

    const-string v20, "rowid asc"

    const/16 v18, 0x64

    .line 15
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 16
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_de
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_77 .. :try_end_de} :catch_44
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_77 .. :try_end_de} :catch_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_77 .. :try_end_de} :catch_31
    .catchall {:try_start_77 .. :try_end_de} :catchall_2e

    .line 17
    :goto_de
    :try_start_de
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_2c8

    .line 18
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move/from16 v15, p1

    .line 19
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 20
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6
    :try_end_f6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_de .. :try_end_f6} :catch_2be
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_de .. :try_end_f6} :catch_2b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_de .. :try_end_f6} :catch_2ab
    .catchall {:try_start_de .. :try_end_f6} :catchall_111

    const/4 v9, 0x0

    .line 22
    :try_start_f7
    invoke-virtual {v6, v9, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v6

    if-eqz v6, :cond_131

    move/from16 v6, v26

    .line 23
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v6, v25

    .line 24
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19
    :try_end_109
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f7 .. :try_end_109} :catch_127
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f7 .. :try_end_109} :catch_11e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f7 .. :try_end_109} :catch_114
    .catchall {:try_start_f7 .. :try_end_109} :catchall_111

    :goto_109
    move-object v6, v3

    move-wide/from16 v27, v19

    move-object/from16 v19, v4

    move-wide/from16 v3, v27

    goto :goto_135

    :catchall_111
    move-exception v0

    goto/16 :goto_301

    :catch_114
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    :goto_11b
    const/4 v6, 0x0

    goto/16 :goto_330

    :catch_11e
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    :catch_124
    :goto_124
    const/4 v6, 0x0

    goto/16 :goto_35c

    :catch_127
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    :goto_12e
    const/4 v6, 0x0

    goto/16 :goto_377

    :cond_131
    const-wide/16 v19, 0x0

    const/4 v9, 0x0

    goto :goto_109

    :goto_135
    if-nez v8, :cond_198

    .line 25
    :try_start_137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8
    :try_end_13b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_137 .. :try_end_13b} :catch_194
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_137 .. :try_end_13b} :catch_191
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_137 .. :try_end_13b} :catch_18d
    .catchall {:try_start_137 .. :try_end_13b} :catchall_111

    move-object/from16 v20, v0

    .line 26
    :try_start_13d
    array-length v0, v15
    :try_end_13e
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_13d .. :try_end_13e} :catch_174
    .catchall {:try_start_13d .. :try_end_13e} :catchall_170

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :try_start_141
    invoke-virtual {v8, v15, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 27
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 28
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbh;
    :try_end_14f
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_141 .. :try_end_14f} :catch_176
    .catchall {:try_start_141 .. :try_end_14f} :catchall_16e

    .line 31
    :try_start_14f
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_15c

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    invoke-direct {v5, v0, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 32
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14f .. :try_end_15c} :catch_16a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14f .. :try_end_15c} :catch_167
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14f .. :try_end_15c} :catch_163
    .catchall {:try_start_14f .. :try_end_15c} :catchall_111

    :cond_15c
    :goto_15c
    move-object/from16 v17, v6

    const/4 v0, 0x2

    :cond_15f
    :goto_15f
    const/4 v3, 0x3

    const/4 v6, 0x0

    goto/16 :goto_298

    :catch_163
    move-exception v0

    :goto_164
    move-object/from16 v17, v6

    goto :goto_11b

    :catch_167
    :goto_167
    move-object/from16 v17, v6

    goto :goto_124

    :catch_16a
    move-exception v0

    :goto_16b
    move-object/from16 v17, v6

    goto :goto_12e

    :catchall_16e
    move-exception v0

    goto :goto_189

    :catchall_170
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_189

    :catch_174
    move-object/from16 v21, v5

    .line 10
    :catch_176
    :try_start_176
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Failed to load event from local database"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_185
    .catchall {:try_start_176 .. :try_end_185} :catchall_16e

    .line 31
    :try_start_185
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    goto :goto_15c

    :goto_189
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 64
    throw v0

    :catch_18d
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_164

    :catch_191
    move-object/from16 v21, v5

    goto :goto_167

    :catch_194
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_16b

    :cond_198
    move-object/from16 v20, v0

    move-object/from16 v21, v5

    const/4 v5, 0x1

    if-ne v8, v5, :cond_1db

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_1a3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_185 .. :try_end_1a3} :catch_16a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_185 .. :try_end_1a3} :catch_167
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_185 .. :try_end_1a3} :catch_163
    .catchall {:try_start_185 .. :try_end_1a3} :catchall_111

    .line 34
    :try_start_1a3
    array-length v0, v15

    const/4 v8, 0x0

    invoke-virtual {v5, v15, v8, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 35
    invoke-virtual {v5, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzpl;
    :try_end_1b3
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_1a3 .. :try_end_1b3} :catch_1b9
    .catchall {:try_start_1a3 .. :try_end_1b3} :catchall_1b7

    .line 39
    :try_start_1b3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_1b6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1b3 .. :try_end_1b6} :catch_16a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1b3 .. :try_end_1b6} :catch_167
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b3 .. :try_end_1b6} :catch_163
    .catchall {:try_start_1b3 .. :try_end_1b6} :catchall_111

    goto :goto_1cc

    :catchall_1b7
    move-exception v0

    goto :goto_1d7

    .line 64
    :catch_1b9
    :try_start_1b9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v8, "Failed to load user property from local database"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_1c8
    .catchall {:try_start_1b9 .. :try_end_1c8} :catchall_1b7

    .line 39
    :try_start_1c8
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_1cc
    if-eqz v0, :cond_15c

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    invoke-direct {v5, v0, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 40
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15c

    .line 39
    :goto_1d7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw v0

    :cond_1db
    const/4 v0, 0x2

    if-ne v8, v0, :cond_229

    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_1e2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1c8 .. :try_end_1e2} :catch_16a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1c8 .. :try_end_1e2} :catch_167
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c8 .. :try_end_1e2} :catch_163
    .catchall {:try_start_1c8 .. :try_end_1e2} :catchall_111

    .line 42
    :try_start_1e2
    array-length v8, v15
    :try_end_1e3
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_1e2 .. :try_end_1e3} :catch_204
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_200

    move-object/from16 v17, v6

    const/4 v6, 0x0

    :try_start_1e6
    invoke-virtual {v5, v15, v6, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 43
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    invoke-interface {v6, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzah;
    :try_end_1f4
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_1e6 .. :try_end_1f4} :catch_206
    .catchall {:try_start_1e6 .. :try_end_1f4} :catchall_1fe

    .line 49
    :try_start_1f4
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_1f7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1f4 .. :try_end_1f7} :catch_1fb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1f4 .. :try_end_1f7} :catch_124
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f4 .. :try_end_1f7} :catch_1f8
    .catchall {:try_start_1f4 .. :try_end_1f7} :catchall_111

    goto :goto_219

    :catch_1f8
    move-exception v0

    goto/16 :goto_11b

    :catch_1fb
    move-exception v0

    goto/16 :goto_12e

    :catchall_1fe
    move-exception v0

    goto :goto_225

    :catchall_200
    move-exception v0

    move-object/from16 v17, v6

    goto :goto_225

    :catch_204
    move-object/from16 v17, v6

    .line 65
    :catch_206
    :try_start_206
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v8, "Failed to load conditional user property from local database"

    .line 48
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_215
    .catchall {:try_start_206 .. :try_end_215} :catchall_1fe

    .line 49
    :try_start_215
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v6, 0x0

    :goto_219
    if-eqz v6, :cond_15f

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    invoke-direct {v5, v6, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 50
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15f

    .line 49
    :goto_225
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 66
    throw v0

    :cond_229
    move-object/from16 v17, v6

    const/4 v6, 0x4

    if-ne v8, v6, :cond_275

    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_232
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_215 .. :try_end_232} :catch_1fb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_215 .. :try_end_232} :catch_124
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_215 .. :try_end_232} :catch_1f8
    .catchall {:try_start_215 .. :try_end_232} :catchall_111

    .line 52
    :try_start_232
    array-length v8, v15
    :try_end_233
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_232 .. :try_end_233} :catch_251
    .catchall {:try_start_232 .. :try_end_233} :catchall_24e

    const/4 v6, 0x0

    :try_start_234
    invoke-virtual {v5, v15, v6, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 53
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzbf;
    :try_end_242
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_234 .. :try_end_242} :catch_252
    .catchall {:try_start_234 .. :try_end_242} :catchall_24c

    .line 58
    :try_start_242
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_245
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_242 .. :try_end_245} :catch_249
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_242 .. :try_end_245} :catch_35c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_242 .. :try_end_245} :catch_246
    .catchall {:try_start_242 .. :try_end_245} :catchall_111

    goto :goto_265

    :catch_246
    move-exception v0

    goto/16 :goto_330

    :catch_249
    move-exception v0

    goto/16 :goto_377

    :catchall_24c
    move-exception v0

    goto :goto_271

    :catchall_24e
    move-exception v0

    const/4 v6, 0x0

    goto :goto_271

    :catch_251
    const/4 v6, 0x0

    .line 66
    :catch_252
    :try_start_252
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v8

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    const-string v15, "Failed to load default event parameters from local database"

    .line 57
    invoke-virtual {v8, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_261
    .catchall {:try_start_252 .. :try_end_261} :catchall_24c

    .line 58
    :try_start_261
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v8, 0x0

    :goto_265
    if-eqz v8, :cond_26f

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    invoke-direct {v5, v8, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 59
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26f
    const/4 v3, 0x3

    goto :goto_298

    .line 58
    :goto_271
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw v0

    :cond_275
    const/4 v3, 0x3

    const/4 v6, 0x0

    if-ne v8, v3, :cond_289

    .line 59
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 62
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Skipping app launch break"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_298

    :cond_289
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Unknown record type in local database"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :goto_298
    move/from16 v26, v3

    move v9, v6

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    const/16 p1, 0x1

    const/4 v8, 0x5

    const/16 v25, 0x4

    move v6, v0

    move-object/from16 v0, v20

    goto/16 :goto_de

    :catch_2ab
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    goto/16 :goto_330

    :catch_2b5
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    goto/16 :goto_35c

    :catch_2be
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    goto/16 :goto_377

    :cond_2c8
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    const-string v0, "messages"

    const-string v3, "rowid <= ?"

    .line 68
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v13, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 70
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2f4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 73
    :cond_2f4
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 74
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2fa
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_261 .. :try_end_2fa} :catch_249
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_261 .. :try_end_2fa} :catch_35c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_261 .. :try_end_2fa} :catch_246
    .catchall {:try_start_261 .. :try_end_2fa} :catchall_111

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object v7

    :goto_301
    move-object v6, v14

    goto/16 :goto_39c

    :catchall_304
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    const/4 v14, 0x0

    :goto_30d
    if-eqz v14, :cond_317

    .line 8
    :try_start_30f
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_317

    :catch_313
    move-exception v0

    goto :goto_31b

    :catch_315
    move-exception v0

    goto :goto_31f

    .line 10
    :cond_317
    :goto_317
    throw v0
    :try_end_318
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_30f .. :try_end_318} :catch_315
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_30f .. :try_end_318} :catch_31d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30f .. :try_end_318} :catch_313
    .catchall {:try_start_30f .. :try_end_318} :catchall_2e

    :goto_318
    const/4 v6, 0x0

    goto/16 :goto_39c

    :goto_31b
    const/4 v14, 0x0

    goto :goto_330

    :catch_31d
    :goto_31d
    const/4 v14, 0x0

    goto :goto_35c

    :goto_31f
    const/4 v14, 0x0

    goto :goto_377

    :catchall_321
    move-exception v0

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto/16 :goto_39c

    :catch_326
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    const/4 v13, 0x0

    goto :goto_31b

    :goto_330
    if-eqz v13, :cond_33b

    .line 75
    :try_start_332
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_33b

    .line 76
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_33b
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_34b
    .catchall {:try_start_332 .. :try_end_34b} :catchall_111

    if-eqz v14, :cond_350

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_350
    if-eqz v13, :cond_38f

    goto :goto_369

    :catch_353
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    const/4 v13, 0x0

    goto :goto_31d

    :catch_35c
    :goto_35c
    int-to-long v3, v11

    .line 81
    :try_start_35d
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_360
    .catchall {:try_start_35d .. :try_end_360} :catchall_111

    add-int/lit8 v11, v11, 0x14

    if-eqz v14, :cond_367

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_367
    if-eqz v13, :cond_38f

    .line 80
    :goto_369
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_38f

    :catch_36d
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move v6, v9

    const/4 v13, 0x0

    goto :goto_31f

    .line 85
    :goto_377
    :try_start_377
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_387
    .catchall {:try_start_377 .. :try_end_387} :catchall_111

    if-eqz v14, :cond_38c

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_38c
    if-eqz v13, :cond_38f

    goto :goto_369

    :cond_38f
    :goto_38f
    add-int/lit8 v10, v10, 0x1

    move v9, v6

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    const/4 v6, 0x0

    const/4 v8, 0x5

    goto/16 :goto_22

    :goto_39c
    if-eqz v6, :cond_3a1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3a1
    if-eqz v13, :cond_3a6

    .line 80
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 86
    :cond_3a6
    throw v0

    .line 8
    :cond_3a7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    const/16 v24, 0x0

    return-object v24

    :cond_3b9
    return-object v7
.end method

.method public final zzn()Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    move-result v0

    return v0
.end method

.method public final zzo()Z
    .registers 11

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    goto/16 :goto_99

    .line 2
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzq()Z

    move-result v1

    if-eqz v1, :cond_99

    const/4 v1, 0x5

    move v4, v1

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_8a

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_29

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    goto/16 :goto_99

    :catchall_23
    move-exception v0

    goto :goto_84

    :catch_25
    move-exception v7

    goto :goto_46

    :catch_27
    move-exception v7

    goto :goto_6f

    .line 4
    :cond_29
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    const/4 v9, 0x3

    .line 5
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_42} :catch_27
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_42} :catch_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_42} :catch_25
    .catchall {:try_start_19 .. :try_end_42} :catchall_23

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return v6

    :goto_46
    if-eqz v5, :cond_51

    .line 9
    :try_start_48
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_51
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    if-eqz v5, :cond_81

    goto :goto_6b

    :catch_63
    int-to-long v6, v4

    .line 14
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_67
    .catchall {:try_start_48 .. :try_end_67} :catchall_23

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_81

    .line 13
    :goto_6b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_81

    .line 19
    :goto_6f
    :try_start_6f
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_23

    if-eqz v5, :cond_81

    goto :goto_6b

    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :goto_84
    if-eqz v5, :cond_89

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 20
    :cond_89
    throw v0

    .line 13
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_99
    :goto_99
    return v2
.end method

.method public final zzp()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method public final zzq()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    const-string v0, "google_app_measurement_local.db"

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final zzs(I[B)Z
    .registers 21

    move-object/from16 v1, p0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    goto :goto_6a

    :cond_b
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 3
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzaW:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzgi;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    goto :goto_26

    :cond_25
    move-object v0, v5

    :goto_26
    new-instance v6, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "entry"

    move-object/from16 v8, p2

    .line 9
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v4

    if-eqz v4, :cond_59

    if-eqz v0, :cond_59

    const-string v4, "app_version"

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    .line 12
    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "app_version_int"

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    :cond_59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    const/4 v4, 0x5

    move v7, v2

    move v8, v4

    :goto_5f
    if-ge v7, v4, :cond_198

    const/4 v9, 0x1

    .line 15
    :try_start_62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_62 .. :try_end_66} :catch_167
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_62 .. :try_end_66} :catch_152
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_66} :catch_125
    .catchall {:try_start_62 .. :try_end_66} :catchall_121

    if-nez v10, :cond_80

    :try_start_68
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    :goto_6a
    return v2

    :catchall_6b
    move-exception v0

    goto/16 :goto_18d

    :catch_6e
    move-exception v0

    move/from16 v17, v2

    move/from16 p2, v9

    goto/16 :goto_11b

    :catch_75
    move/from16 v17, v2

    goto/16 :goto_11d

    :catch_79
    move-exception v0

    move/from16 v17, v2

    move/from16 p2, v9

    goto/16 :goto_11f

    .line 16
    :cond_80
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    .line 17
    invoke-virtual {v10, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_68 .. :try_end_89} :catch_79
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_68 .. :try_end_89} :catch_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_89} :catch_6e
    .catchall {:try_start_68 .. :try_end_89} :catchall_6b

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_ad

    .line 18
    :try_start_8d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 19
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8d .. :try_end_97} :catch_a6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8d .. :try_end_97} :catch_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8d .. :try_end_97} :catch_9b
    .catchall {:try_start_8d .. :try_end_97} :catchall_98

    goto :goto_ad

    :catchall_98
    move-exception v0

    goto/16 :goto_118

    :catch_9b
    move-exception v0

    move/from16 v17, v2

    :goto_9e
    move/from16 p2, v9

    goto/16 :goto_12c

    :catch_a2
    move/from16 v17, v2

    goto/16 :goto_156

    :catch_a6
    move-exception v0

    move/from16 v17, v2

    :goto_a9
    move/from16 p2, v9

    goto/16 :goto_16c

    :cond_ad
    :goto_ad
    const-wide/32 v14, 0x186a0

    cmp-long v0, v12, v14

    const-string v14, "messages"

    if-ltz v0, :cond_102

    .line 20
    :try_start_b6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v15, "Data loss, local db full"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    const-wide/32 v15, 0x186a1

    sub-long/2addr v15, v12

    .line 22
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-virtual {v10, v14, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v12, v15

    if-eqz v0, :cond_102

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0
    :try_end_e2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b6 .. :try_end_e2} :catch_a6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b6 .. :try_end_e2} :catch_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b6 .. :try_end_e2} :catch_9b
    .catchall {:try_start_b6 .. :try_end_e2} :catchall_98

    move/from16 v17, v2

    :try_start_e4
    const-string v2, "Different delete count than expected in local db. expected, received, difference"

    .line 26
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e4 .. :try_end_ea} :catch_100
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e4 .. :try_end_ea} :catch_156
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e4 .. :try_end_ea} :catch_fe
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_98

    move/from16 p2, v9

    .line 27
    :try_start_ec
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sub-long/2addr v15, v12

    .line 28
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 29
    invoke-virtual {v0, v2, v4, v9, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_106

    :catch_f9
    move-exception v0

    goto :goto_12c

    :catch_fb
    move-exception v0

    goto/16 :goto_16c

    :catch_fe
    move-exception v0

    goto :goto_9e

    :catch_100
    move-exception v0

    goto :goto_a9

    :cond_102
    move/from16 v17, v2

    move/from16 p2, v9

    .line 30
    :goto_106
    invoke-virtual {v10, v14, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 31
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 32
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ec .. :try_end_10f} :catch_fb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ec .. :try_end_10f} :catch_156
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ec .. :try_end_10f} :catch_f9
    .catchall {:try_start_ec .. :try_end_10f} :catchall_98

    if-eqz v11, :cond_114

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_114
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return p2

    :goto_118
    move-object v5, v11

    goto/16 :goto_18d

    :goto_11b
    move-object v11, v5

    goto :goto_12c

    :goto_11d
    move-object v11, v5

    goto :goto_156

    :goto_11f
    move-object v11, v5

    goto :goto_16c

    :catchall_121
    move-exception v0

    move-object v10, v5

    goto/16 :goto_18d

    :catch_125
    move-exception v0

    move/from16 v17, v2

    move/from16 p2, v9

    move-object v10, v5

    move-object v11, v10

    :goto_12c
    if-eqz v10, :cond_137

    .line 33
    :try_start_12e
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_137

    .line 34
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_137
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    move/from16 v2, p2

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_14a
    .catchall {:try_start_12e .. :try_end_14a} :catchall_98

    if-eqz v11, :cond_14f

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_14f
    if-eqz v10, :cond_186

    goto :goto_163

    :catch_152
    move/from16 v17, v2

    move-object v10, v5

    move-object v11, v10

    :catch_156
    :goto_156
    int-to-long v12, v8

    .line 39
    :try_start_157
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_98

    add-int/lit8 v8, v8, 0x14

    if-eqz v11, :cond_161

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_161
    if-eqz v10, :cond_186

    .line 38
    :goto_163
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_186

    :catch_167
    move-exception v0

    move/from16 v17, v2

    move-object v10, v5

    move-object v11, v10

    .line 43
    :goto_16c
    :try_start_16c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_17e
    .catchall {:try_start_16c .. :try_end_17e} :catchall_98

    if-eqz v11, :cond_183

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_183
    if-eqz v10, :cond_186

    goto :goto_163

    :cond_186
    :goto_186
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v17

    const/4 v4, 0x5

    goto/16 :goto_5f

    :goto_18d
    if-eqz v5, :cond_192

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_192
    if-eqz v10, :cond_197

    .line 38
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 44
    :cond_197
    throw v0

    :cond_198
    move/from16 v17, v2

    .line 38
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v17
.end method
