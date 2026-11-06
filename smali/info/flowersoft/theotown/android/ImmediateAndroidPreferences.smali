###### Class info.flowersoft.theotown.android.ImmediateAndroidPreferences (info.flowersoft.theotown.android.ImmediateAndroidPreferences)
.class public Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;
.super Ljava/lang/Object;
.source "ImmediateAndroidPreferences.java"

# interfaces
.implements Lcom/badlogic/gdx/Preferences;


# instance fields
.field public editor:Landroid/content/SharedPreferences$Editor;

.field public sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private edit()V
    .registers 2

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_c

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    :cond_c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 127
    invoke-direct {p0}, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->edit()V

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public flush()V
    .registers 2

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_a

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    :cond_a
    return-void
.end method

.method public get()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 4

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;
    .registers 4

    .line 19
    invoke-direct {p0}, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->edit()V

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInteger(Ljava/lang/String;I)Lcom/badlogic/gdx/Preferences;
    .registers 4

    .line 26
    invoke-direct {p0}, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->edit()V

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;
    .registers 5

    .line 33
    invoke-direct {p0}, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->edit()V

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .registers 4

    .line 47
    invoke-direct {p0}, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->edit()V

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
