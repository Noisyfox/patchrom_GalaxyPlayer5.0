.class Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkReorder.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkReorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReOrderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/browser/BookmarkListItem;",
        ">;",
        "Lcom/nemustech/tiffany/widget/TFDndController;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutID:I

.field final synthetic this$0:Lcom/android/browser/BookmarkReorder;


# direct methods
.method public constructor <init>(Lcom/android/browser/BookmarkReorder;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/BookmarkListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/BookmarkListItem;>;"
    iput-object p1, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->this$0:Lcom/android/browser/BookmarkReorder;

    .line 251
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 252
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 253
    iput p3, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->mLayoutID:I

    .line 254
    iput-object p2, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->mContext:Landroid/content/Context;

    .line 255
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1
    .parameter "startPos"

    .prologue
    .line 325
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 330
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .locals 2
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 334
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarkListItem;

    .line 340
    .local v0, draggedObj:Lcom/android/browser/BookmarkListItem;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->setNotifyOnChange(Z)V

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->remove(Ljava/lang/Object;)V

    .line 344
    if-ge p1, p2, :cond_0

    .line 345
    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    .line 350
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 351
    iget-object v1, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->this$0:Lcom/android/browser/BookmarkReorder;

    invoke-virtual {v1}, Lcom/android/browser/BookmarkReorder;->softkeyStatus()V

    .line 352
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>;"
    const/4 v7, 0x0

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, holder:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    if-nez p2, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->mLayoutID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 262
    new-instance v2, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;

    .end local v2           #holder:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    invoke-direct {v2, p0, p2}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;-><init>(Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;Landroid/view/View;)V

    .line 263
    .restart local v2       #holder:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 267
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/BookmarkListItem;

    .line 269
    .local v3, item:Lcom/android/browser/BookmarkListItem;
    invoke-virtual {v2}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/browser/BookmarkListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v2}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->getUrl()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/browser/BookmarkListItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v2}, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    invoke-virtual {v3}, Lcom/android/browser/BookmarkListItem;->getFavicon()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {v3}, Lcom/android/browser/BookmarkListItem;->getFavicon()[B

    move-result-object v1

    .line 276
    .local v1, data:[B
    iget-object v4, v2, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    array-length v5, v1

    invoke-static {v1, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 287
    .end local v1           #data:[B
    :goto_1
    return-object p2

    .line 265
    .end local v3           #item:Lcom/android/browser/BookmarkListItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    check-cast v2, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;,"Lcom/android/browser/BookmarkReorder$ReOrderListAdapter<TT;>.ViewHolder;"
    goto :goto_0

    .line 279
    .restart local v3       #item:Lcom/android/browser/BookmarkListItem;
    :cond_1
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/browser/BookmarkListItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 281
    iget-object v4, v2, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 284
    :cond_2
    iget-object v4, v2, Lcom/android/browser/BookmarkReorder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
