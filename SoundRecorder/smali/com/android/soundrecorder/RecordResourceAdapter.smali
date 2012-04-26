.class public Lcom/android/soundrecorder/RecordResourceAdapter;
.super Lcom/miui/android/resourcebrowser/LocalResourceAdapter;
.source "RecordResourceAdapter.java"


# static fields
.field private static sCallerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDurationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHighLightFileName:Ljava/lang/String;

.field private mRecordFolderPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "metaData"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/android/resourcebrowser/LocalResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 34
    iput-object p1, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mHighLightFileName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mRecordFolderPath:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sDurationMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sDurationMap:Ljava/util/HashMap;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sCallerMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sCallerMap:Ljava/util/HashMap;

    .line 45
    :cond_1
    return-void
.end method

.method private getCallerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "number"

    .prologue
    const/16 v12, 0x20

    const/4 v2, 0x0

    .line 140
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sCallerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sCallerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 169
    :goto_0
    return-object v0

    .line 144
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 148
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sCallerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 149
    goto :goto_0

    .line 152
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v7, caller:Ljava/lang/StringBuilder;
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 154
    .local v10, nameIndex:I
    const/4 v8, 0x1

    .line 155
    .local v8, first:Z
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, name:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 158
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v8, 0x0

    .line 164
    goto :goto_1

    .line 165
    .end local v9           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v11, p1

    .line 168
    .local v11, ret:Ljava/lang/String;
    :goto_2
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sCallerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v11

    .line 169
    goto :goto_0

    .line 167
    .end local v11           #ret:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2
.end method

.method private getCallers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "title"

    .prologue
    .line 123
    const/16 v3, 0x70

    const/16 v4, 0x2c

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x73

    const/16 v5, 0x2a

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, numbers:[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 136
    :goto_0
    return-object v3

    .line 128
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 130
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/RecordResourceAdapter;->getCallerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_1

    .line 132
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected bindContentView(Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 7
    .parameter "view"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/miui/android/resourcebrowser/Resource;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/miui/android/resourcebrowser/LocalResourceAdapter;->bindContentView(Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object p1

    .line 59
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/android/resourcebrowser/Resource;

    .line 60
    .local v1, resourceItem:Lcom/miui/android/resourcebrowser/Resource;
    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {v1}, Lcom/miui/android/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, filePath:Ljava/lang/String;
    const v3, 0x1020205

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 64
    iget-object v3, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mHighLightFileName:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mHighLightFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_0
    :goto_0
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 75
    .restart local v2       #tv:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordResourceAdapter;->formatRecordTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 79
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 82
    :cond_1
    const v3, 0x1020206

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 83
    .restart local v2       #tv:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordResourceAdapter;->formatFileTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    const v3, 0x1020207

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 88
    .restart local v2       #tv:Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecordResourceAdapter;->formatDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .end local v0           #filePath:Ljava/lang/String;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_3
    return-object p1

    .line 70
    .restart local v0       #filePath:Ljava/lang/String;
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public clearMaps()V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sDurationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 229
    sget-object v0, Lcom/android/soundrecorder/RecordResourceAdapter;->sCallerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    return-void
.end method

.method public formatDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "path"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, duration:I
    sget-object v6, Lcom/android/soundrecorder/RecordResourceAdapter;->sDurationMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 176
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 178
    .local v3, player:Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 180
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 181
    if-gtz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 184
    :cond_0
    sget-object v6, Lcom/android/soundrecorder/RecordResourceAdapter;->sDurationMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 193
    .end local v3           #player:Landroid/media/MediaPlayer;
    :goto_0
    div-int/lit16 v1, v0, 0xe10

    .line 194
    .local v1, hour:I
    rem-int/lit16 v0, v0, 0xe10

    .line 195
    div-int/lit8 v2, v0, 0x3c

    .line 196
    .local v2, minute:I
    rem-int/lit8 v5, v0, 0x3c

    .line 198
    .local v5, second:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v4, sb:Ljava/lang/StringBuilder;
    if-lez v1, :cond_1

    .line 200
    iget-object v6, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f060027

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    if-gtz v2, :cond_2

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    .line 203
    :cond_2
    iget-object v6, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f060026

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_3
    if-gtz v5, :cond_4

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 206
    :cond_4
    iget-object v6, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f060025

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 185
    .end local v1           #hour:I
    .end local v2           #minute:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v5           #second:I
    .restart local v3       #player:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v6

    .line 187
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    throw v6

    .line 190
    .end local v3           #player:Landroid/media/MediaPlayer;
    :cond_6
    sget-object v6, Lcom/android/soundrecorder/RecordResourceAdapter;->sDurationMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public formatFileTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    .line 213
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 217
    .local v3, time:J
    iget-object v6, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 219
    .local v1, dateFormat:Ljava/text/DateFormat;
    iget-object v6, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 221
    .local v5, timeFormat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 222
    .local v0, date:Ljava/util/Date;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 224
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    .end local v3           #time:J
    .end local v5           #timeFormat:Ljava/text/DateFormat;
    :goto_0
    return-object v6

    :cond_0
    const-string v6, ""

    goto :goto_0
.end method

.method public formatRecordTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    const/4 v6, -0x1

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, title:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 107
    .local v2, index:I
    if-eq v2, v6, :cond_0

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mRecordFolderPath:Ljava/lang/String;

    const-string v5, "/call_rec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 114
    if-eq v2, v6, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_2

    .line 115
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/soundrecorder/RecordResourceAdapter;->getCallers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, callers:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v4, v3

    .line 119
    .end local v0           #callers:Ljava/lang/String;
    :goto_0
    return-object v4

    .restart local v0       #callers:Ljava/lang/String;
    :cond_1
    move-object v4, v0

    .line 116
    goto :goto_0

    .end local v0           #callers:Ljava/lang/String;
    :cond_2
    move-object v4, v3

    .line 119
    goto :goto_0
.end method

.method protected getVisitors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, visitors:Ljava/util/List;,"Ljava/util/List<Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor<Lcom/miui/android/resourcebrowser/Resource;>;>;"
    new-instance v1, Lcom/android/soundrecorder/RecordFolder;

    iget-object v2, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mRecordFolderPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/soundrecorder/RecordFolder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v0
.end method

.method public setFolderPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mRecordFolderPath:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setHighLightFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/soundrecorder/RecordResourceAdapter;->mHighLightFileName:Ljava/lang/String;

    .line 49
    return-void
.end method
