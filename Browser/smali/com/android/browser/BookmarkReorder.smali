.class public Lcom/android/browser/BookmarkReorder;
.super Landroid/app/Activity;
.source "BookmarkReorder.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/browser/BookmarkReorder$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFolder:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsBackup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/BookmarkListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCount:I

.field private mList:Lcom/nemustech/tiffany/widget/TFDndListView;

.field private mMap:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 244
    return-void
.end method

.method private getBookmarkListItem()V
    .locals 14

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->getDBAll()Landroid/database/Cursor;

    move-result-object v12

    .line 128
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItemsBackup:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    .line 136
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v13, p0, Lcom/android/browser/BookmarkReorder;->mItemsBackup:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/browser/BookmarkListItem;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x4

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x5

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x7

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    const/16 v11, 0x8

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/android/browser/BookmarkListItem;-><init>(ILjava/lang/String;IJJLjava/lang/String;I[B[B)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v13, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/browser/BookmarkListItem;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x4

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x5

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x7

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    const/16 v11, 0x8

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/android/browser/BookmarkListItem;-><init>(ILjava/lang/String;IJJLjava/lang/String;I[B[B)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BookmarkReorder;->mItemsCount:I

    .line 146
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private getDBAll()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookmark == 1 and folder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BookmarkReorder;->mCurrentFolder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, whereClause:Ljava/lang/String;
    const-string v5, "_id DESC"

    .line 186
    .local v5, orderBy:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v4

    const/4 v4, 0x1

    const-string v8, "url"

    aput-object v8, v2, v4

    const/4 v4, 0x2

    const-string v8, "visits"

    aput-object v8, v2, v4

    const/4 v4, 0x3

    const-string v8, "date"

    aput-object v8, v2, v4

    const/4 v4, 0x4

    const-string v8, "created"

    aput-object v8, v2, v4

    const/4 v4, 0x5

    const-string v8, "title"

    aput-object v8, v2, v4

    const/4 v4, 0x6

    const-string v8, "folder"

    aput-object v8, v2, v4

    const/4 v4, 0x7

    const-string v8, "thumbnail"

    aput-object v8, v2, v4

    const/16 v4, 0x8

    const-string v8, "favicon"

    aput-object v8, v2, v4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, cur:Landroid/database/Cursor;
    move-object v0, v6

    .line 199
    .end local v6           #cur:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    move-object v0, v9

    .line 197
    goto :goto_0
.end method

.method private initList()V
    .locals 4

    .prologue
    .line 107
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder;->setContentView(I)V

    .line 108
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFDndListView;

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    .line 109
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->getBookmarkListItem()V

    .line 110
    new-instance v0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030003

    iget-object v3, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;-><init>(Lcom/android/browser/BookmarkReorder;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    .line 111
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v1, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v1, p0, Lcom/android/browser/BookmarkReorder;->mAdapter:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->setDndController(Lcom/nemustech/tiffany/widget/TFDndController;)V

    .line 116
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->setDragGrabHandleDrawable(I)V

    .line 117
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->setCacheColorHint(I)V

    .line 118
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->setDndListener(Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->setDndMode(Z)V

    .line 120
    return-void
.end method


# virtual methods
.method public OnDragAndDropStart()V
    .locals 5

    .prologue
    .line 357
    iget-object v4, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFDndListView;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 358
    .local v2, dragView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 360
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 361
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 363
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 364
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 365
    .local v1, cache:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 366
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 367
    .local v3, item:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/browser/BookmarkReorder;->mList:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v4, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->setDragItemBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    .end local v3           #item:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 372
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 374
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #cache:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public OnDragAndDropStop()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 103
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->finish()V

    .line 104
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->initList()V

    .line 93
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->softkeyStatus()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder;->mMap:Landroid/os/Bundle;

    .line 76
    iget-object v0, p0, Lcom/android/browser/BookmarkReorder;->mMap:Landroid/os/Bundle;

    const-string v1, "folder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BookmarkReorder;->mCurrentFolder:I

    .line 77
    invoke-direct {p0}, Lcom/android/browser/BookmarkReorder;->initList()V

    .line 78
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder;->softkeyStatus()V

    .line 80
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 97
    const/16 v0, 0x52

    if-ne v0, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    return-void
.end method

.method public softkeyStatus()V
    .locals 6

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, b:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v5, p0, Lcom/android/browser/BookmarkReorder;->mItemsCount:I

    if-ge v3, v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/android/browser/BookmarkReorder;->mItemsBackup:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/BookmarkListItem;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, bitem:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/BookmarkReorder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/BookmarkListItem;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, item:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    const/4 v0, 0x1

    .line 175
    .end local v1           #bitem:Ljava/lang/String;
    .end local v4           #item:Ljava/lang/String;
    :cond_0
    const v5, 0x7f0d000a

    invoke-virtual {p0, v5}, Lcom/android/browser/BookmarkReorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, bn:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    :cond_1
    return-void

    .line 166
    .end local v2           #bn:Landroid/view/View;
    .restart local v1       #bitem:Ljava/lang/String;
    .restart local v4       #item:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
