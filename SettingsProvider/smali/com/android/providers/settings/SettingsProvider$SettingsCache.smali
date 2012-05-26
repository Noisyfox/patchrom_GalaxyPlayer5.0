.class final Lcom/android/providers/settings/SettingsProvider$SettingsCache;
.super Ljava/util/LinkedHashMap;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheFullyMatchesDisk:Z

.field private final mCacheName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const/16 v0, 0xc8

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheName:Ljava/lang/String;

    return-void
.end method

.method public static forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .parameter "tableName"

    .prologue
    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$300()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$400()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidate(Ljava/lang/String;)V
    .locals 2
    .parameter "tableName"

    .prologue
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .local v0, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "cache"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    monitor-exit p0

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v1

    .local v1, oldValue:Ljava/lang/String;
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    monitor-exit p0

    move v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    move v2, v3

    :goto_1
    if-nez p2, :cond_4

    :goto_2
    if-eq v2, v3, :cond_5

    monitor-exit p0

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit p0

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #oldValue:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "cache"
    .parameter "contentValues"

    .prologue
    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v2, "SettingsProvider"

    const-string v3, "null name populating settings cache."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public fullyMatchesDisk()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public populate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    :cond_0
    const-string v0, "value"

    invoke-static {v0, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$500()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$200()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_2

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v1, "value"

    invoke-static {v1, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .restart local v0       #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .parameter "eldest"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFullyMatchesDisk(Z)V
    .locals 1
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
