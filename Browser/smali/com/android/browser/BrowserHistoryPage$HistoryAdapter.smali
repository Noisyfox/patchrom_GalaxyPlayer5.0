.class Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
.super Lcom/android/browser/DateSortedExpandableListAdapter;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    .line 313
    invoke-direct {p0, p2, p3, p4}, Lcom/android/browser/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 315
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 320
    if-eqz p4, :cond_0

    instance-of v4, p4, Lcom/android/browser/HistoryItem;

    if-nez v4, :cond_1

    .line 321
    :cond_0
    new-instance v2, Lcom/android/browser/HistoryItem;

    iget-object v4, p0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {v2, v4}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, item:Lcom/android/browser/HistoryItem;
    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingLeft()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingRight()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/browser/HistoryItem;->setPadding(IIII)V

    .line 332
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->moveCursorToChildPosition(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 358
    :goto_1
    return-object v2

    .line 329
    .end local v2           #item:Lcom/android/browser/HistoryItem;
    :cond_1
    move-object v0, p4

    check-cast v0, Lcom/android/browser/HistoryItem;

    move-object v2, v0

    .restart local v2       #item:Lcom/android/browser/HistoryItem;
    goto :goto_0

    .line 336
    :cond_2
    const/4 v3, 0x0

    .line 339
    .local v3, url:Ljava/lang/String;
    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/browser/HistoryItem;->setName(Ljava/lang/String;)V

    .line 340
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {v2, v3}, Lcom/android/browser/HistoryItem;->setUrl(Ljava/lang/String;)V

    .line 342
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getBlob(I)[B

    move-result-object v1

    .line 343
    .local v1, data:[B
    if-eqz v1, :cond_3

    .line 344
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/browser/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 350
    :goto_2
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getInt(I)I

    move-result v4

    if-ne v8, v4, :cond_4

    move v4, v8

    :goto_3
    invoke-virtual {v2, v4}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    goto :goto_1

    .line 352
    .end local v1           #data:[B
    :catch_0
    move-exception v4

    goto :goto_1

    .line 347
    .restart local v1       #data:[B
    :cond_3
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/browser/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    move v4, v9

    .line 350
    goto :goto_3
.end method
