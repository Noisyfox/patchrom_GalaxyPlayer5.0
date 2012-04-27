.class Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;
.super Ljava/lang/Object;
.source "BrowserRssNewlinkPage.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserRssNewlinkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserRssNewLinkAdapter"
.end annotation


# instance fields
.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/BrowserRssNewlinkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserRssNewlinkPage;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->mObservers:Ljava/util/Vector;

    .line 159
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/android/browser/BrowserRssNewlinkPage;->access$400()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 255
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    new-instance v1, Lcom/android/browser/BrowserRssLinksItem;

    iget-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {v1, v4}, Lcom/android/browser/BrowserRssLinksItem;-><init>(Landroid/content/Context;)V

    .line 196
    .local v1, item:Lcom/android/browser/BrowserRssLinksItem;
    :goto_0
    iget-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    #getter for: Lcom/android/browser/BrowserRssNewlinkPage;->FeedTitle:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/browser/BrowserRssNewlinkPage;->access$200(Lcom/android/browser/BrowserRssNewlinkPage;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, p1

    .line 197
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    #getter for: Lcom/android/browser/BrowserRssNewlinkPage;->FeedUrl:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/browser/BrowserRssNewlinkPage;->access$300(Lcom/android/browser/BrowserRssNewlinkPage;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, p1

    .line 202
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserRssLinksItem;->setName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v3}, Lcom/android/browser/BrowserRssLinksItem;->setUrl(Ljava/lang/String;)V

    .line 214
    return-object v1

    .line 189
    .end local v1           #item:Lcom/android/browser/BrowserRssLinksItem;
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/browser/BrowserRssLinksItem;

    move-object v1, v0

    .restart local v1       #item:Lcom/android/browser/BrowserRssLinksItem;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method
