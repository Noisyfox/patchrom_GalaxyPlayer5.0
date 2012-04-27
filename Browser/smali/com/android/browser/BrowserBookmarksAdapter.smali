.class Lcom/android/browser/BrowserBookmarksAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;,
        Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field private mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mCurrentPage:Ljava/lang/String;

.field private mCurrentThumbnail:Landroid/graphics/Bitmap;

.field private mCurrentTitle:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mExtraOffset:I

.field private mFolderCount:I

.field private mFolderCursor:Landroid/database/Cursor;

.field private mMostVisited:Z

.field private mNeedsOffset:Z

.field private mViewMode:Lcom/android/browser/BookmarkViewMode;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
    .locals 15
    .parameter "b"
    .parameter "curPage"
    .parameter "curTitle"
    .parameter "curThumbnail"
    .parameter "createShortcut"
    .parameter "mostVisited"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 85
    if-nez p5, :cond_1

    if-nez p6, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    .line 86
    move/from16 v0, p6

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    .line 87
    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    .line 88
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentTitle:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    sget-object v2, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 99
    const-string v13, "_id DESC"

    .line 100
    .local v13, orderBy:Ljava/lang/String;
    if-eqz p6, :cond_3

    .line 101
    const-string v11, "visits != 0"

    .line 111
    .local v11, whereClause:Ljava/lang/String;
    :goto_2
    const-string v14, "created > 0"

    .line 112
    .local v14, folderWhereClause:Ljava/lang/String;
    const-string v7, "position ASC"

    .line 114
    .local v7, folderOrderBy:Ljava/lang/String;
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 116
    sget-object v3, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    .line 120
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 122
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    .line 127
    :cond_0
    sget-object v9, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    .line 129
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 130
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v3, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 132
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 135
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 136
    return-void

    .line 85
    .end local v7           #folderOrderBy:Ljava/lang/String;
    .end local v11           #whereClause:Ljava/lang/String;
    .end local v13           #orderBy:Ljava/lang/String;
    .end local v14           #folderWhereClause:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 87
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 103
    .restart local v13       #orderBy:Ljava/lang/String;
    :cond_3
    if-eqz p5, :cond_4

    .line 104
    const-string v11, "bookmark = 1"

    .restart local v11       #whereClause:Ljava/lang/String;
    goto :goto_2

    .line 106
    .end local v11           #whereClause:Ljava/lang/String;
    :cond_4
    const-string v11, "bookmark = 1 and folder = 0"

    .restart local v11       #whereClause:Ljava/lang/String;
    goto :goto_2
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserBookmarksAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    return p1
.end method

.method private bind(Lcom/android/browser/BookmarkItem;I)V
    .locals 6
    .parameter "b"
    .parameter "position"

    .prologue
    .line 904
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 906
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 914
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 922
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 923
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 924
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 929
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private bind(Lcom/android/browser/FolderItem;I)V
    .locals 6
    .parameter "f"
    .parameter "position"

    .prologue
    const/16 v5, 0xa0

    const/4 v4, 0x0

    .line 886
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 888
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 890
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 892
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/browser/FolderItem;->setName(Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 894
    .local v0, folder:I
    invoke-virtual {p1, v0}, Lcom/android/browser/FolderItem;->setFolder(I)V

    .line 895
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/FolderItem;->setThumbnailIcon(Landroid/graphics/Bitmap;)V

    .line 897
    return-void
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "cursorIndex"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 838
    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v1, v2

    if-le p2, v1, :cond_1

    :cond_0
    move-object v1, v4

    .line 848
    :goto_0
    return-object v1

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 844
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 845
    .local v0, data:[B
    if-nez v0, :cond_2

    move-object v1, v4

    .line 846
    goto :goto_0

    .line 848
    :cond_2
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getString(II)Ljava/lang/String;
    .locals 3
    .parameter "cursorIndex"
    .parameter "position"

    .prologue
    .line 866
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1

    .line 867
    :cond_0
    const-string v0, ""

    .line 870
    :goto_0
    return-object v0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 870
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getTouchIcon(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 780
    const-string v5, "_id DESC"

    .line 781
    .local v5, orderBy:Ljava/lang/String;
    const-string v3, "bookmark = 1"

    .line 783
    .local v3, whereClause:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 786
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 788
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 791
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 794
    .local v7, data:[B
    if-nez v7, :cond_0

    move-object v0, v4

    .line 804
    .end local v7           #data:[B
    :goto_1
    return-object v0

    .line 799
    .restart local v7       #data:[B
    :cond_0
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 802
    .end local v7           #data:[B
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 788
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 804
    goto :goto_1
.end method

.method static queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "onlyBookmarks"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "[?]"

    .line 413
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v5

    .line 445
    :goto_0
    return-object v0

    .line 418
    :cond_1
    if-nez p1, :cond_2

    .line 419
    move-object p1, p2

    .line 424
    :cond_2
    invoke-static {p1}, Lcom/android/browser/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, originalUrlNoQuery:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/browser/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, urlNoQuery:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[?]"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[?]"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 434
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    aput-object v6, v4, v8

    aput-object v7, v4, v9

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v0, 0x3

    aput-object p2, v4, v0

    .line 436
    .local v4, selArgs:[Ljava/lang/String;
    const-string v3, "url == ? OR url == ? OR url LIKE ? || \'%\' OR url LIKE ? || \'%\'"

    .line 440
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    :cond_3
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 445
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private static removeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 451
    if-nez p0, :cond_0

    .line 452
    const/4 v2, 0x0

    .line 459
    :goto_0
    return-object v2

    .line 454
    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 455
    .local v1, query:I
    move-object v0, p0

    .line 456
    .local v0, noQuery:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 457
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 459
    goto :goto_0
.end method

.method static updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 385
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public deleteFolderRow(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 204
    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-le p1, v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 208
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, title:Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0}, Lcom/android/browser/Folders;->removeFromFolders(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method public deleteRow(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 281
    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 287
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, folder:Ljava/lang/String;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v4, v2, v1, v0}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 757
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 759
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 762
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 765
    .local v0, data:[B
    if-nez v0, :cond_0

    move-object v2, v4

    .line 775
    .end local v0           #data:[B
    :goto_1
    return-object v2

    .line 770
    .restart local v0       #data:[B
    :cond_0
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 773
    .end local v0           #data:[B
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 775
    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    .line 468
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v0, v1

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 830
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderCount()I
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    .line 476
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderName(Lcom/android/browser/BrowserBookmarksPage;I)Ljava/lang/String;
    .locals 7
    .parameter "b"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 729
    const-string v3, "_id != 0 "

    .line 730
    .local v3, folderWhereClause:Ljava/lang/String;
    const-string v5, "position ASC"

    .line 731
    .local v5, folderOrderBy:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 735
    .local v6, folderCursor:Landroid/database/Cursor;
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 740
    :goto_0
    return-object v0

    .line 739
    :cond_1
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v0, p2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 740
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsBookmark(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 855
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v3

    .line 859
    :goto_0
    return v0

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 859
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v4, v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 505
    int-to-long v0, p1

    return-wide v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 146
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v2, map:Landroid/os/Bundle;
    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v4, v5

    if-lt p1, v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v2

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 153
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, url:Ljava/lang/String;
    const-string v4, "title"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 159
    .local v1, folder:I
    const-string v4, "folder"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 162
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 163
    const-string v4, "favicon"

    array-length v5, v0

    invoke-static {v0, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    :cond_2
    const-string v4, "id"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getScreenshot(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 823
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 646
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 834
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 816
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f020010

    .line 535
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-nez v7, :cond_0

    .line 536
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "this should only be called when the cursor is valid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 539
    :cond_0
    if-ltz p1, :cond_1

    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    add-int/2addr v7, v8

    if-le p1, v7, :cond_2

    .line 540
    :cond_1
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 543
    :cond_2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_9

    .line 544
    if-eqz p2, :cond_3

    instance-of v7, p2, Lcom/android/browser/AddNewBookmark;

    if-nez v7, :cond_3

    instance-of v7, p2, Lcom/android/browser/BookmarkItem;

    if-nez v7, :cond_3

    instance-of v7, p2, Lcom/android/browser/FolderItem;

    if-eqz v7, :cond_4

    .line 548
    :cond_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 549
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 552
    .end local v2           #factory:Landroid/view/LayoutInflater;
    :cond_4
    const v7, 0x7f0d000e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 553
    .local v3, holder:Landroid/view/View;
    const v7, 0x7f0d000d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 554
    .local v4, thumb:Landroid/widget/ImageView;
    const v7, 0x7f0d000f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 556
    .local v6, tv:Landroid/widget/TextView;
    if-nez p1, :cond_6

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v7, :cond_6

    .line 558
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 562
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    move-object v7, p2

    .line 639
    .end local v3           #holder:Landroid/view/View;
    .end local v4           #thumb:Landroid/widget/ImageView;
    .end local v6           #tv:Landroid/widget/TextView;
    :goto_1
    return-object v7

    .line 564
    .restart local v3       #holder:Landroid/view/View;
    .restart local v4       #thumb:Landroid/widget/ImageView;
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 569
    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v7, v8, :cond_7

    .line 574
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 575
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    const v7, 0x7f02000b

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object v7, p2

    .line 596
    goto :goto_1

    .line 584
    :cond_7
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v8, v9

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 585
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 588
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    if-nez v5, :cond_8

    .line 589
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 591
    :cond_8
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 599
    .end local v3           #holder:Landroid/view/View;
    .end local v4           #thumb:Landroid/widget/ImageView;
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_9
    if-nez p1, :cond_b

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mNeedsOffset:Z

    if-eqz v7, :cond_b

    .line 601
    instance-of v7, p2, Lcom/android/browser/AddNewBookmark;

    if-eqz v7, :cond_a

    .line 602
    move-object v0, p2

    check-cast v0, Lcom/android/browser/AddNewBookmark;

    move-object v1, v0

    .line 606
    .local v1, b:Lcom/android/browser/AddNewBookmark;
    :goto_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    move-object v7, v1

    .line 607
    goto :goto_1

    .line 604
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :cond_a
    new-instance v1, Lcom/android/browser/AddNewBookmark;

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v1, v7}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    .restart local v1       #b:Lcom/android/browser/AddNewBookmark;
    goto :goto_3

    .line 609
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :cond_b
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-eqz v7, :cond_f

    .line 610
    if-eqz p2, :cond_c

    instance-of v7, p2, Lcom/android/browser/HistoryItem;

    if-nez v7, :cond_d

    .line 611
    :cond_c
    new-instance p2, Lcom/android/browser/HistoryItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 626
    .restart local p2
    :cond_d
    :goto_4
    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v7, v8, :cond_12

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-nez v7, :cond_12

    .line 628
    move-object v0, p2

    check-cast v0, Lcom/android/browser/FolderItem;

    move-object v7, v0

    invoke-direct {p0, v7, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->bind(Lcom/android/browser/FolderItem;I)V

    .line 635
    :goto_5
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-eqz v7, :cond_e

    .line 636
    move-object v0, p2

    check-cast v0, Lcom/android/browser/HistoryItem;

    move-object v7, v0

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    :cond_e
    move-object v7, p2

    .line 639
    goto/16 :goto_1

    .line 614
    :cond_f
    if-eqz p2, :cond_10

    instance-of v7, p2, Lcom/android/browser/BookmarkItem;

    if-eqz v7, :cond_10

    instance-of v7, p2, Lcom/android/browser/FolderItem;

    if-nez v7, :cond_d

    .line 617
    :cond_10
    iget v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v7, v8, :cond_11

    .line 619
    new-instance p2, Lcom/android/browser/FolderItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    .restart local p2
    goto :goto_4

    .line 622
    :cond_11
    new-instance p2, Lcom/android/browser/BookmarkItem;

    .end local p2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v7}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .restart local p2
    goto :goto_4

    .line 633
    :cond_12
    move-object v0, p2

    check-cast v0, Lcom/android/browser/BookmarkItem;

    move-object v7, v0

    invoke-direct {p0, v7, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->bind(Lcom/android/browser/BookmarkItem;I)V

    goto :goto_5
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public isFolderItem(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)Z
    .locals 4
    .parameter "b"
    .parameter "convertView"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v0, v1, :cond_2

    .line 707
    if-nez p3, :cond_0

    move v0, v2

    .line 719
    :goto_0
    return v0

    .line 709
    :cond_0
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v0, p3, v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-ge v0, v1, :cond_1

    move v0, v3

    .line 710
    goto :goto_0

    :cond_1
    move v0, v2

    .line 712
    goto :goto_0

    .line 716
    :cond_2
    instance-of v0, p2, Lcom/android/browser/FolderItem;

    if-eqz v0, :cond_3

    move v0, v3

    .line 717
    goto :goto_0

    :cond_3
    move v0, v2

    .line 719
    goto :goto_0
.end method

.method populateBookmarkItem(Lcom/android/browser/BookmarkItem;I)V
    .locals 6
    .parameter "b"
    .parameter "position"

    .prologue
    .line 513
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 514
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 516
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 518
    .local v1, data:[B
    const/4 v0, 0x0

    .line 519
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 520
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 525
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 526
    return-void

    .line 523
    :cond_0
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method populateFolderItem(Lcom/android/browser/FolderItem;I)V
    .locals 2
    .parameter "f"
    .parameter "position"

    .prologue
    .line 653
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    if-gt p2, v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 656
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/browser/FolderItem;->setName(Ljava/lang/String;)V

    .line 659
    :cond_0
    return-void
.end method

.method public refreshList()V
    .locals 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 361
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    .line 367
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 370
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 373
    return-void

    .line 364
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCount:I

    goto :goto_0
.end method

.method public showFolder(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)V
    .locals 15
    .parameter "b"
    .parameter "v"
    .parameter "position"

    .prologue
    .line 666
    if-eqz p2, :cond_1

    .line 668
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/browser/FolderItem;

    move-object v14, v0

    .line 669
    .local v14, item:Lcom/android/browser/FolderItem;
    invoke-virtual {v14}, Lcom/android/browser/FolderItem;->getFolder()I

    move-result v13

    .line 683
    .end local v14           #item:Lcom/android/browser/FolderItem;
    .local v13, currentFolder:I
    :goto_0
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mMostVisited:Z

    if-nez v1, :cond_0

    .line 686
    const-string v6, "_id DESC"

    .line 687
    .local v6, orderBy:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bookmark != 0 and folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, whereClause:Ljava/lang/String;
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    .line 691
    if-nez p3, :cond_3

    .line 692
    const-string v10, "_id != 0 "

    .line 695
    .local v10, folderWhereClause:Ljava/lang/String;
    :goto_1
    const-string v12, "position ASC"

    .line 696
    .local v12, folderOrderBy:Ljava/lang/String;
    sget-object v8, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/browser/BrowserBookmarksPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    .line 700
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    .line 702
    .end local v4           #whereClause:Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    .end local v10           #folderWhereClause:Ljava/lang/String;
    .end local v12           #folderOrderBy:Ljava/lang/String;
    :cond_0
    return-void

    .line 671
    .end local v13           #currentFolder:I
    :cond_1
    if-nez p3, :cond_2

    .line 673
    move/from16 v13, p3

    .restart local v13       #currentFolder:I
    goto :goto_0

    .line 677
    .end local v13           #currentFolder:I
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p3, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 678
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .restart local v13       #currentFolder:I
    goto :goto_0

    .line 694
    .restart local v4       #whereClause:Ljava/lang/String;
    .restart local v6       #orderBy:Ljava/lang/String;
    :cond_3
    const-string v10, "_id = -1 "

    .restart local v10       #folderWhereClause:Ljava/lang/String;
    goto :goto_1
.end method

.method switchViewMode(Lcom/android/browser/BookmarkViewMode;)V
    .locals 0
    .parameter "viewMode"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 510
    return-void
.end method

.method public updateFolderRow(Landroid/os/Bundle;)V
    .locals 8
    .parameter "map"

    .prologue
    const-string v6, "title"

    .line 177
    const-string v4, "id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, id:I
    const/4 v1, -0x1

    .line 179
    .local v1, position:I
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 181
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 185
    :cond_0
    if-gez v1, :cond_3

    .line 201
    :cond_1
    :goto_1
    return-void

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 189
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 190
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mFolderCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 194
    const-string v4, "title"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_4
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_1
.end method

.method public updateRow(Landroid/os/Bundle;)V
    .locals 14
    .parameter "map"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "url"

    const-string v12, "title"

    const-string v11, "folder"

    .line 224
    :try_start_0
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    const-string v7, "id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 233
    .local v2, id:I
    const/4 v3, -0x1

    .line 234
    .local v3, position:I
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_0

    .line 235
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 236
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 240
    :cond_0
    if-gez v3, :cond_3

    .line 273
    :cond_1
    :goto_2
    return-void

    .line 225
    .end local v2           #id:I
    .end local v3           #position:I
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 226
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "BookmarksAdapter"

    const-string v8, "Exception trying to access cursor, so refreshList!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #id:I
    .restart local v3       #position:I
    :cond_2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 244
    :cond_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 245
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 249
    const-string v7, "title"

    invoke-virtual {v6, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_4
    const-string v7, "url"

    invoke-virtual {p1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, url:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 254
    const-string v7, "url"

    invoke-virtual {v6, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_5
    const-string v7, "folder"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, folder:I
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eq v1, v7, :cond_6

    .line 260
    const-string v7, "folder"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    :cond_6
    const-string v7, "invalidateThumbnail"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v10, :cond_7

    .line 266
    const-string v7, "thumbnail"

    new-array v8, v9, [B

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 268
    :cond_7
    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto/16 :goto_2
.end method
