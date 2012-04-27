.class Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "TFHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFilterable:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, headerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    .local p2, footerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 52
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mIsFilterable:Z

    .line 54
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 55
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 57
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    .line 77
    .local v1, info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 82
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 128
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 129
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 153
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    if-lt p1, v2, :cond_1

    .line 154
    sub-int v1, p1, v2

    .line 155
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 156
    .local v0, adapterCount:I
    if-lt v1, v0, :cond_0

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 164
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return-object v3

    .line 159
    .restart local v0       #adapterCount:I
    .restart local v1       #adjPosition:I
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 161
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :cond_1
    if-ge p1, v2, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0

    .line 164
    .restart local p0
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 169
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 170
    sub-int v1, p1, v2

    .line 171
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 172
    .local v0, adapterCnt:I
    if-ge v1, v0, :cond_0

    .line 173
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 176
    .end local v0           #adapterCnt:I
    .end local v1           #adjPosition:I
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 209
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 210
    sub-int v1, p1, v2

    .line 211
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 212
    .local v0, adapterCount:I
    if-ge v1, v0, :cond_0

    .line 213
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 217
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 188
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    if-lt p1, v2, :cond_1

    .line 189
    sub-int v1, p1, v2

    .line 190
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 191
    .local v0, adapterCount:I
    if-lt v1, v0, :cond_0

    .line 195
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getFootersCount()I

    move-result v3

    sub-int v4, v1, v0

    if-le v3, v4, :cond_2

    .line 196
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 204
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return-object v3

    .line 199
    .restart local v0       #adapterCount:I
    .restart local v1       #adjPosition:I
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 201
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :cond_1
    if-ge p1, v2, :cond_2

    .line 202
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0

    .line 204
    .restart local p0
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 137
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    if-lt p1, v2, :cond_1

    .line 138
    sub-int v1, p1, v2

    .line 139
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 140
    .local v0, adapterCount:I
    if-lt v1, v0, :cond_0

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->isSelectable:Z

    .line 148
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return v3

    .line 143
    .restart local v0       #adapterCount:I
    .restart local v1       #adjPosition:I
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 145
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :cond_1
    if-ge p1, v2, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0

    .line 148
    .restart local p0
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 231
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 237
    :cond_0
    return-void
.end method
