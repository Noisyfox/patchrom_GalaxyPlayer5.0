.class Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TFAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRetainViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4114
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4128
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$2500(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 4393
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 4394
    .local v3, maxViews:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    .line 4395
    .local v8, viewTypeCount:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4396
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 4397
    aget-object v4, v5, v1

    .line 4398
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4399
    .local v6, size:I
    sub-int v0, v6, v3

    .line 4400
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 4401
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 4402
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$3000(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V

    .line 4401
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 4396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4405
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 1
    .parameter "scrap"

    .prologue
    .line 4296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    .line 4297
    return-void
.end method

.method addScrapView(Landroid/view/View;Z)V
    .locals 5
    .parameter "scrap"
    .parameter "ignoreRetainView"

    .prologue
    .line 4305
    if-nez p1, :cond_1

    .line 4343
    :cond_0
    :goto_0
    return-void

    .line 4309
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 4310
    .local v0, lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-eqz v0, :cond_0

    .line 4316
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 4318
    .local v1, retainViews:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/view/View;>;"
    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 4319
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4320
    const-string v3, "[ABS_LIST]"

    const-string v4, "scrap view should be retained~! return~!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4329
    :cond_2
    iget v2, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 4330
    .local v2, viewType:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4334
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 4335
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4340
    :goto_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 4341
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 4337
    :cond_3
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addShouldRetainView(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "v"

    .prologue
    .line 4143
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4150
    :goto_0
    return-void

    .line 4146
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 4147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 4149
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method clear()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4207
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v5, v7, :cond_0

    .line 4208
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4209
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4210
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 4211
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2800(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V

    .line 4210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4214
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    .line 4215
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 4216
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 4217
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4218
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 4219
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2900(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V

    .line 4218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4223
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method public clearShouldRetainView()V
    .locals 3

    .prologue
    .line 4153
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 4154
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4155
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4156
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    goto :goto_0

    .line 4158
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4160
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;>;"
    :cond_1
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 4233
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 4234
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4236
    :cond_0
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 4238
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4239
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 4240
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v4, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4241
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 4243
    .local v3, lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 4246
    aput-object v1, v0, v2

    .line 4239
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4249
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 4259
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 4260
    .local v1, index:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4261
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 4262
    aget-object v2, v0, v1

    .line 4263
    .local v2, match:Landroid/view/View;
    aput-object v4, v0, v1

    move-object v3, v2

    .line 4266
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public getRetainViewPositions()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4168
    const/4 v0, 0x0

    .line 4170
    .local v0, ret:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4171
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 4173
    :cond_0
    return-object v0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4274
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_1

    .line 4275
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4276
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4277
    .local v1, size:I
    if-lez v1, :cond_0

    .line 4278
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    .line 4292
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :goto_0
    return-object v3

    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #size:I
    .restart local p0
    :cond_0
    move-object v3, v5

    .line 4280
    goto :goto_0

    .line 4283
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 4284
    .local v2, whichScrap:I
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 4285
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v3, v2

    .line 4286
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4287
    .restart local v1       #size:I
    if-lez v1, :cond_2

    .line 4288
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    goto :goto_0

    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    .restart local p0
    :cond_2
    move-object v3, v5

    .line 4292
    goto :goto_0
.end method

.method public getShouldRetainView(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 4181
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v0, p0

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4349
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4350
    .local v0, activeViews:[Landroid/view/View;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    if-eqz v8, :cond_1

    move v2, v9

    .line 4351
    .local v2, hasListener:Z
    :goto_0
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v8, v9, :cond_2

    move v4, v9

    .line 4353
    .local v4, multipleScraps:Z
    :goto_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4354
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 4355
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 4356
    aget-object v6, v0, v3

    .line 4357
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 4358
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    iget v7, v8, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 4361
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 4363
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 4355
    .end local v7           #whichScrap:I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v4           #multipleScraps:Z
    .end local v5           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #victim:Landroid/view/View;
    :cond_1
    move v2, v10

    .line 4350
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v4, v10

    .line 4351
    goto :goto_1

    .line 4368
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_3
    if-eqz v4, :cond_4

    .line 4369
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 4371
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4373
    if-eqz v2, :cond_0

    .line 4374
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 4385
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->pruneScrapViews()V

    .line 4386
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 4186
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 4187
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4190
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 4191
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 4192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 4191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4194
    :cond_1
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    .line 4195
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4196
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4197
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 4200
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
