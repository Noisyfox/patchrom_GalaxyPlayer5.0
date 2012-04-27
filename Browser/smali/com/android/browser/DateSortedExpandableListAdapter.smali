.class public Lcom/android/browser/DateSortedExpandableListAdapter;
.super Ljava/lang/Object;
.source "DateSortedExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDateIndex:I

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mIdIndex:I

.field private mItemMap:[I

.field private mNumberOfBins:I

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "dateIndex"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    .line 76
    iput-object p2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 77
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 78
    new-instance v0, Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;-><init>(Lcom/android/browser/DateSortedExpandableListAdapter;)V

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 79
    iput p3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    .line 80
    invoke-direct {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->buildMap()V

    .line 81
    return-void
.end method

.method private buildMap()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 89
    new-array v0, v7, [I

    .line 91
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 92
    aput v6, v0, v5

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 95
    const/4 v3, -0x1

    .line 96
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 97
    :goto_1
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 98
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v6}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v1

    .line 99
    .local v1, date:J
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 100
    .local v4, index:I
    if-le v4, v3, :cond_3

    .line 101
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 102
    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 105
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 115
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_1
    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    .line 116
    return-void

    .line 109
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_2
    move v3, v4

    .line 111
    :cond_3
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 112
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private groupPositionToBin(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x5

    .line 198
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 199
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 201
    :cond_1
    iget v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-eq v2, v1, :cond_2

    iget v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-nez v1, :cond_3

    :cond_2
    move v1, p1

    .line 217
    :goto_0
    return v1

    .line 210
    :cond_3
    const/4 v0, -0x1

    .line 211
    .local v0, arrayPosition:I
    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-le p1, v1, :cond_5

    .line 212
    add-int/lit8 v0, v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_4

    .line 214
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v1, v0

    .line 217
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method getBlob(I)[B
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 323
    :goto_0
    return-wide v0

    .line 318
    :catch_0
    move-exception v0

    .line 323
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 0
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 345
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .locals 0
    .parameter "groupId"

    .prologue
    .line 349
    return-wide p1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 310
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 269
    if-eqz p3, :cond_0

    instance-of v4, p3, Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 271
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030017

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 275
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .local v2, item:Landroid/widget/TextView;
    :goto_0
    iget-object v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, label:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    return-object v2

    .line 273
    .end local v2           #item:Landroid/widget/TextView;
    .end local v3           #label:Ljava/lang/String;
    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .restart local v2       #item:Landroid/widget/TextView;
    goto :goto_0
.end method

.method getInt(I)I
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method getLong(I)J
    .locals 2
    .parameter "cursorIndex"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 1
    .parameter "cursorIndex"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method groupFromChildId(J)I
    .locals 6
    .parameter "childId"

    .prologue
    .line 171
    const/4 v1, -0x1

    .line 172
    .local v1, group:I
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    iget v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v3}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    iget v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v4}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v0

    .line 178
    .local v0, bin:I
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-ne v3, v4, :cond_0

    move v3, v0

    .line 187
    .end local v0           #bin:I
    :goto_1
    return v3

    .line 180
    .restart local v0       #bin:I
    :cond_0
    const/4 v1, 0x0

    .line 181
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 182
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v3, v3, v2

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 181
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    .end local v0           #bin:I
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    move v3, v1

    .line 187
    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveCursorToChildPosition(II)Z
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 252
    :goto_0
    return v2

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result p1

    .line 248
    move v1, p2

    .line 249
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 250
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_0
.end method

.method moveCursorToPackedChildPosition(J)Z
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 226
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 228
    const/4 v2, 0x0

    .line 234
    :goto_0
    return v2

    .line 230
    :cond_0
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 232
    .local v1, groupPosition:I
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 234
    .local v0, childPosition:I
    invoke-virtual {p0, v1, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v2

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 342
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 339
    return-void
.end method

.method refreshData()V
    .locals 3

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 260
    invoke-direct {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->buildMap()V

    .line 261
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 262
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method
