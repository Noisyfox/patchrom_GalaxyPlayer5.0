.class public Lcom/android/soundrecorder/RecordFolder;
.super Ljava/lang/Object;
.source "RecordFolder.java"

# interfaces
.implements Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor",
        "<",
        "Lcom/miui/android/resourcebrowser/Resource;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mFolderPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/soundrecorder/RecordFolder;->mFolderPath:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .parameter "object1"
    .parameter "object2"

    .prologue
    const-wide/16 v6, 0x0

    .line 66
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 67
    .local v0, result:J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/soundrecorder/RecordFolder;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public dataChanged()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public loadData(Landroid/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AsyncAdapter",
            "<",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, task:Landroid/widget/AsyncAdapter$AsyncLoadDataTask;,"Landroid/widget/AsyncAdapter<Lcom/miui/android/resourcebrowser/Resource;>.AsyncLoadDataTask;"
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/soundrecorder/RecordFolder;->mFolderPath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, files:[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 31
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v8, recordFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v3, v0, v6

    .line 34
    .local v3, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v10, p0, Lcom/android/soundrecorder/RecordFolder;->mFolderPath:Ljava/lang/String;

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 33
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, fullPath:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".3gpp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".amr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 41
    :cond_2
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filename:Ljava/lang/String;
    .end local v5           #fullPath:Ljava/lang/String;
    :cond_3
    invoke-static {v8, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 49
    .restart local v2       #file:Ljava/io/File;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "local_path"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v10, "m_title"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v9, Lcom/miui/android/resourcebrowser/Resource;

    invoke-direct {v9}, Lcom/miui/android/resourcebrowser/Resource;-><init>()V

    .line 53
    .local v9, resource:Lcom/miui/android/resourcebrowser/Resource;
    invoke-virtual {v9, v1}, Lcom/miui/android/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 54
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/miui/android/resourcebrowser/Resource;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {p1, v10}, Landroid/widget/AsyncAdapter$AsyncLoadDataTask;->onLoadData([Ljava/lang/Object;)V

    goto :goto_2

    .line 57
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #file:Ljava/io/File;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #len$:I
    .end local v8           #recordFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v9           #resource:Lcom/miui/android/resourcebrowser/Resource;
    :cond_4
    return-void
.end method
